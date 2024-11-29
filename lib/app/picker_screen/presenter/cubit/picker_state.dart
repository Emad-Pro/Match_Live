part of 'picker_cubit.dart';

class PickerState extends Equatable {
  final PickerFileState pickerFileState;
  final File? resultFilePicked;
  final String errorMessage;
  final List<ChannelListModel>? parseM3Uchannels;
  final RequestState parseM3UState;
  final String parseM3UerrorMessage;

  final RequestState createPlayListState;
  final String createPlayListErrorMessage;

  const PickerState(
      {this.resultFilePicked,
      this.errorMessage = '',
      this.pickerFileState = PickerFileState.init,
      this.parseM3Uchannels,
      this.parseM3UState = RequestState.init,
      this.parseM3UerrorMessage = '',
      this.createPlayListState = RequestState.init,
      this.createPlayListErrorMessage = ''});

  @override
  List<Object?> get props => [
        pickerFileState,
        resultFilePicked,
        errorMessage,
        parseM3Uchannels,
        parseM3UState,
        parseM3UerrorMessage,
        createPlayListState,
        createPlayListErrorMessage
      ];

  PickerState copyWith(
      {PickerFileState? pickerFileState,
      String? errorMessage,
      File? resultFilePicked,
      List<ChannelListModel>? parseM3Uchannels,
      RequestState? parseM3UState,
      String? parseM3UerrorMessage,
      RequestState? createPlayListState,
      String? createPlayListErrorMessage}) {
    return PickerState(
        pickerFileState: pickerFileState ?? PickerFileState.init,
        resultFilePicked: resultFilePicked ?? this.resultFilePicked,
        errorMessage: errorMessage ?? this.errorMessage,
        parseM3Uchannels: parseM3Uchannels ?? this.parseM3Uchannels,
        parseM3UState: parseM3UState ?? RequestState.init,
        parseM3UerrorMessage: parseM3UerrorMessage ?? this.parseM3UerrorMessage,
        createPlayListState: createPlayListState ?? RequestState.init,
        createPlayListErrorMessage:
            createPlayListErrorMessage ?? this.createPlayListErrorMessage);
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
