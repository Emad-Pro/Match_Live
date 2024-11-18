import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

part 'picker_state.dart';

class PickerCubit extends Cubit<PickerState> {
  PickerCubit() : super(PickerState());
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

      if (!await file.exists()) {
        emit(state.copyWith(
            errorMessage: "File Not Found",
            pickerFileState: PickerFileState.checkFileError));
        return false;
      }

      final contents = await file.readAsLines();

      if (contents.isNotEmpty && contents.first.contains('#EXTM3U')) {
        final hasValidLinks = contents
            .any((line) => line.startsWith('http') || line.startsWith('https'));

        if (hasValidLinks) {
          pathController.text = filePath;
          emit(state.copyWith(
              pickerFileState: PickerFileState.checkFileSuccess,
              resultFilePicked: File(filePath)));

          return true;
        }
      }
      emit(state.copyWith(
          errorMessage: "File M3U Not Valid",
          pickerFileState: PickerFileState.checkFileError));
      return false;
    } catch (e) {
      emit(state.copyWith(
          errorMessage: "Some Error",
          pickerFileState: PickerFileState.checkFileError));
      return false;
    }
  }
}
