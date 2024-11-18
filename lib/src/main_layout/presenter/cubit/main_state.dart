// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_cubit.dart';

class MainState extends Equatable {
  final RequestState pickFileState;
  final String pickedFilePath;
  final String errorMessage;

  const MainState(
      {this.pickFileState = RequestState.init,
      this.pickedFilePath = '',
      this.errorMessage = ''});

  MainState copyWith({
    RequestState? pickFileState,
    String? pickedFilePath,
    String? errorMessage,
  }) {
    return MainState(
      pickFileState: pickFileState ?? RequestState.init,
      pickedFilePath: pickedFilePath ?? this.pickedFilePath,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [pickFileState, pickedFilePath, errorMessage];
}
