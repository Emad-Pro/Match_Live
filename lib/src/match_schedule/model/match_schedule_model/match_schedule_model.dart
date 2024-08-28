import 'package:equatable/equatable.dart';

import 'team_details.dart';

class MatchScheduleModel extends Equatable {
  final TeamDetails teamOneDetails;
  final TeamDetails teamTowDetails;
  final String time;
  final String? stadium;
  final String? champion;
  final String? channel;
  final String? statusMatch;

  const MatchScheduleModel(
      {this.stadium,
      this.champion,
      this.channel,
      this.statusMatch,
      required this.time,
      required this.teamOneDetails,
      required this.teamTowDetails});

  @override
  List<Object?> get props {
    return [
      teamOneDetails,
      teamTowDetails,
      time,
      stadium,
      champion,
      channel,
      statusMatch
    ];
  }
}
