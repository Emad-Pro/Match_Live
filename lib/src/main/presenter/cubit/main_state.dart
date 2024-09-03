part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  // const factory MainState({

  // }) = _MainState;
  const factory MainState.loading() = _loading;
  const factory MainState.success(MainModel mainModel) = _success;
  const factory MainState.erorr(String errorMessage) = _erorr;
}
