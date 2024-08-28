import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:live_match/src/match_schedule/model/match_schedule_model/team_name.dart';

class TeamDetails extends Equatable {
  final String teamLogo;
  final String score;
  final TeamName teamName;

  const TeamDetails(
      {required this.teamLogo, required this.teamName, required this.score});

  factory TeamDetails.fromMap(Map<String, dynamic> map) {
    return TeamDetails(
      teamLogo: map['teamLogo'] as String,
      score: map['score'] as String,
      teamName: TeamName.fromMap(map['teamName'] as Map<String, dynamic>),
    );
  }

  factory TeamDetails.fromJson(String source) =>
      TeamDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object> get props => [teamLogo, teamName];
}
