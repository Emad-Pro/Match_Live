import 'package:flutter/material.dart';

import '../../../../core/enum/request_state.dart';
import '../../../../core/widget/custom_loading.dart';
import '../../../../core/widget/custom_snackbar.dart';
import '../../presenter/cubit/picker_cubit.dart';
import '../show_create_database_dialog.dart';

void pickerListener(PickerState state, BuildContext context) {
  if (state.pickerFileState == PickerFileState.pickFileLoading) {
    customLoading(context, "Loading Select File");
  } else if (state.pickerFileState == PickerFileState.pickFileError) {
    Navigator.pop(context);
    customSnackBar(context, state.errorMessage, Colors.red);
  } else if (state.pickerFileState == PickerFileState.pickFileSuccess) {
    Navigator.pop(context);
    customSnackBar(context, "File Selected Success", Colors.blue);
  } else if (state.pickerFileState == PickerFileState.checkFileLoading) {
    customLoading(context, "Checking File\n Please Wait");
  } else if (state.pickerFileState == PickerFileState.checkFileError) {
    Navigator.pop(context);
    customSnackBar(context, state.errorMessage, Colors.red);
  } else if (state.pickerFileState == PickerFileState.checkFileSuccess) {
    Navigator.pop(context);
    customSnackBar(context, "File Checked Success", Colors.green);
  }

  if (state.parseM3UState == RequestState.loading) {
    customLoading(context, "Loading Convert File");
  } else if (state.parseM3UState == RequestState.erorr) {
    Navigator.pop(context);
    customSnackBar(context, state.parseM3UerrorMessage, Colors.red);
  } else if (state.parseM3UState == RequestState.success) {
    Navigator.pop(context);
    Navigator.pop(context);
    customSnackBar(context, "File Converted Success", Colors.green);
    showCreateDatabaseDialog(context);
  }
}
