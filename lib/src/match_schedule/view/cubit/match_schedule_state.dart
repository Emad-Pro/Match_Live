part of 'match_schedule_cubit.dart';

@freezed
class MatchScheduleState with _$MatchScheduleState {
  const factory MatchScheduleState({required DateTime selectedDateMatch}) =
      _MatchScheduleState;

  factory MatchScheduleState.initial() {
    return MatchScheduleState(
      selectedDateMatch: DateTime.now(),
    );
  }
}
