import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:live_match/core/channel_model/database.dart';
import 'package:live_match/core/enum/request_state.dart';

import '../../../../core/channel_model/playlist_model.dart';

part 'picker_state.dart';

class PickerCubit extends Cubit<PickerState> {
  PickerCubit() : super(const PickerState());
  final TextEditingController titleController = TextEditingController();
  final TextEditingController pathController = TextEditingController();

  Future<void> onPickFile() async {
    emit(state.copyWith(pickerFileState: PickerFileState.pickFileLoading));
    try {
      final result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['m3u', 'm3u8', 'ts']);

      if (result != null && result.files.isNotEmpty) {
        final filePath = result.files.single.path;
        if (filePath != null) {
          await checkM3UFile(filePath);
        }
      } else {
        emit(state.copyWith(
            pickerFileState: PickerFileState.pickFileError,
            errorMessage: "File Not Selected"));
      }
    } catch (e) {
      emit(state.copyWith(
          pickerFileState: PickerFileState.pickFileError,
          errorMessage: e.toString()));
    }
  }

  Future<bool> checkM3UFile(String filePath) async {
    try {
      final file = File(filePath);

      // التحقق من وجود الملف
      if (!await file.exists()) {
        emit(state.copyWith(
            errorMessage: "File Not Found",
            pickerFileState: PickerFileState.checkFileError));
        return false;
      }

      // قراءة محتويات الملف
      final contents = await file.readAsLines();

      // التحقق من أن الملف ليس فارغًا
      if (contents.isEmpty) {
        emit(state.copyWith(
            errorMessage: "File is Empty",
            pickerFileState: PickerFileState.checkFileError));
        return false;
      }

      // التحقق من أن الملف يبدأ بـ #EXTM3U
      if (!contents.first.trim().toUpperCase().startsWith('#EXTM3U')) {
        emit(state.copyWith(
            errorMessage: "File does not start with #EXTM3U",
            pickerFileState: PickerFileState.checkFileError));
        return false;
      }

      // التحقق من وجود روابط أو مسارات محلية أو صور
      final hasValidEntries = contents.any((line) {
        final trimmedLine = line.trim();
        return trimmedLine.isNotEmpty &&
            (trimmedLine.startsWith('http') || // روابط الإنترنت
                trimmedLine.startsWith('https') || // روابط HTTPS
                (!trimmedLine.startsWith('#') &&
                    !trimmedLine.startsWith('0.0.0.0'))); // مسارات محلية
      });

      final hasImageLinks = contents.any((line) {
        final trimmedLine = line.trim().toLowerCase();
        return trimmedLine.endsWith('.jpg') ||
            trimmedLine.endsWith('.png') ||
            trimmedLine.endsWith('.jpeg') ||
            trimmedLine.endsWith('.gif'); // روابط الصور
      });

      // التحقق من صحة البيانات
      if (!hasValidEntries && !hasImageLinks) {
        emit(state.copyWith(
            errorMessage: "File contains no valid links or local paths",
            pickerFileState: PickerFileState.checkFileError));
        return false;
      }

      // إذا كان الملف صالحًا
      pathController.text = filePath;
      emit(state.copyWith(
          pickerFileState: PickerFileState.checkFileSuccess,
          resultFilePicked: File(filePath)));
      parseM3UFile(filePath); // استدعاء ميثود المعالجة
      return true;
    } catch (e) {
      // التعامل مع الأخطاء
      String errorMessage = "An error occurred";
      if (e is FileSystemException) {
        errorMessage = "File System Error: ${e.message}";
      } else {
        errorMessage = "Unexpected Error: ${e.toString()}";
      }

      emit(state.copyWith(
          errorMessage: errorMessage,
          pickerFileState: PickerFileState.checkFileError));
      return false;
    }
  }

  parseM3UFile(String filePath) async {
    emit(state.copyWith(parseM3UState: RequestState.loading));
    try {
      final file = File(filePath);
      final lines = await file.readAsLines();

      final channels = <ChannelListModel>[];
      String? currentName;
      String? currentLogo;

      for (var line in lines) {
        if (line.startsWith('#EXTINF')) {
          // استخراج اسم القناة ورابط الصورة من السطر
          final nameMatch = RegExp(r',(.+)$').firstMatch(line);
          final logoMatch = RegExp(r'tvg-logo="(.*?)"').firstMatch(line);

          currentName = nameMatch?.group(1)?.trim();
          currentLogo = logoMatch?.group(1)?.trim();
        } else if (line.startsWith('http') && currentName != null) {
          // إضافة القناة إلى القائمة
          channels.add(ChannelListModel()
            ..name = currentName
            ..url = line.trim()
            ..image = currentLogo);
          currentName = null;
          currentLogo = null;
        }
      }

      emit(state.copyWith(
          parseM3UState: RequestState.success, parseM3Uchannels: channels));
    } catch (e) {
      emit(state.copyWith(
          parseM3UState: RequestState.erorr,
          parseM3UerrorMessage: "Some Error In File"));
    }
  }

  onCreatePlayList(List<ChannelListModel> channels) async {
    emit(state.copyWith(createPlayListState: RequestState.loading));
    DatabaseService().addData(channels).then((onValue) {
      emit(state.copyWith(createPlayListState: RequestState.success));
    }).catchError((onError) {
      emit(state.copyWith(
          createPlayListState: RequestState.erorr,
          createPlayListErrorMessage: onError.toString()));
    });
  }
}
