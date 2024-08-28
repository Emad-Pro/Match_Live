import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_match/src/match_schedule/model/match_schedule_model/match_schedule_model.dart';
import 'package:live_match/src/match_schedule/model/match_schedule_model/team_details.dart';
import 'package:live_match/src/match_schedule/model/match_schedule_model/team_name.dart';

part 'match_schedule_state.dart';
part 'match_schedule_cubit.freezed.dart';

class MatchScheduleCubit extends Cubit<MatchScheduleState> {
  MatchScheduleCubit() : super(MatchScheduleState.initial());

  incrementDateTime() {
    emit(state.copyWith(
        selectedDateMatch:
            state.selectedDateMatch.subtract(const Duration(days: 1))));
  }

  decrementDateTime() {
    emit(state.copyWith(
        selectedDateMatch:
            state.selectedDateMatch.add(const Duration(days: 1))));
  }

  pickedDateTime(DateTime date) {
    emit(state.copyWith(selectedDateMatch: date));
  }

  convertDateTimeStyle(DateTime date) {
    return "${date.day}-${date.month}-${date.year}";
  }

  final List<MatchScheduleModel> matches = [
    const MatchScheduleModel(
        time: '06:00 م',
        teamOneDetails: TeamDetails(
            score: "2",
            teamLogo:
                'https://upload.wikimedia.org/wikipedia/en/3/39/ZED_FC_logo.png',
            teamName: TeamName(arName: 'زد', enName: "Zed Fc")),
        teamTowDetails: TeamDetails(
            score: "2",
            teamLogo:
                "https://upload.wikimedia.org/wikipedia/commons/c/cc/Ismaily_SC_logo.png",
            teamName: TeamName(arName: "الإسماعيلي", enName: "Ismaili"))),
    const MatchScheduleModel(
        time: '06:00 م',
        teamOneDetails: TeamDetails(
            score: "2",
            teamLogo:
                'https://upload.wikimedia.org/wikipedia/en/3/39/ZED_FC_logo.png',
            teamName: TeamName(arName: 'زد', enName: "Zed Fc")),
        teamTowDetails: TeamDetails(
            score: "2",
            teamLogo:
                "https://upload.wikimedia.org/wikipedia/commons/c/cc/Ismaily_SC_logo.png",
            teamName: TeamName(arName: "الإسماعيلي", enName: "Ismaili"))),
    const MatchScheduleModel(
        time: '06:00 م',
        teamOneDetails: TeamDetails(
            score: "2",
            teamLogo:
                'https://upload.wikimedia.org/wikipedia/en/3/39/ZED_FC_logo.png',
            teamName: TeamName(arName: 'زد', enName: "Zed Fc")),
        teamTowDetails: TeamDetails(
            score: "2",
            teamLogo:
                "https://upload.wikimedia.org/wikipedia/commons/c/cc/Ismaily_SC_logo.png",
            teamName: TeamName(arName: "الإسماعيلي", enName: "Ismaili"))),
    const MatchScheduleModel(
        time: '06:00 م',
        teamOneDetails: TeamDetails(
            score: "2",
            teamLogo:
                'https://upload.wikimedia.org/wikipedia/en/3/39/ZED_FC_logo.png',
            teamName: TeamName(arName: 'زد', enName: "Zed Fc")),
        teamTowDetails: TeamDetails(
            score: "2",
            teamLogo:
                "https://upload.wikimedia.org/wikipedia/commons/c/cc/Ismaily_SC_logo.png",
            teamName: TeamName(arName: "الإسماعيلي", enName: "Ismaili"))),
  ];
}
