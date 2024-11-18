// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'picker_cubit.dart';

class PickerState extends Equatable {
  final PickerFileState pickerFileState;
  final File? resultFilePicked;
  final String errorMessage;

  const PickerState(
      {this.resultFilePicked,
      this.errorMessage = '',
      this.pickerFileState = PickerFileState.init});

  @override
  List<Object?> get props => [
        pickerFileState,
        resultFilePicked,
        errorMessage,
      ];

  PickerState copyWith({
    PickerFileState? pickerFileState,
    String? errorMessage,
    File? resultFilePicked,
  }) {
    return PickerState(
      pickerFileState: pickerFileState ?? this.pickerFileState,
      resultFilePicked: resultFilePicked ?? this.resultFilePicked,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

enum PickerFileState {
  init,
  pickFileLoading,
  pickFileSuccess,
  pickFileError,
  checkFileLoading,
  checkFileSuccess,
  checkFileError,
}
