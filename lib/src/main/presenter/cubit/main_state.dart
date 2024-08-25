part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required bool isPlaying,
    required Duration currentPosition,
    required Duration totalDuration,
  }) = _MainState;
  const factory MainState.initial() = _Initial;
  const factory MainState.loading() = _loading;
  const factory MainState.success() = _success;
  const factory MainState.erorr() = _erorr;
}
