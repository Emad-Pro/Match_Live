import 'package:flutter/material.dart';
import 'package:live_match/core/responsive/responsive_text.dart';

import '../../../model/match_schedule_model/team_details.dart';
import 'match_schdule_team_image_text.dart';
import 'match_schdule_team_name_text.dart';

class MatchSchduleTeamDetailsWidget extends StatelessWidget {
  const MatchSchduleTeamDetailsWidget(
      {super.key, required this.teamDetails, required this.teamNum});
  final TeamDetails teamDetails;
  final int teamNum;
  @override
  Widget build(BuildContext context) {
    final team = teamNum == 1;
    return Expanded(
      child: SizedBox(
        //  width: MediaQuery.sizeOf(context).width / 4,
        child: Row(
            mainAxisAlignment:
                team ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: team
                ? [
                    MatchSchduleTeamImageText(teamDetails: teamDetails),
                    const SizedBox(width: 5),
                    MatchSchduleTeamNameText(
                        teamName: teamDetails.teamName,
                        textAlign: TextAlign.start),
                    const SizedBox(width: 5),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        teamDetails.score,
                        style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 14)),
                      ),
                    ),
                  ]
                : [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        teamDetails.score,
                        style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 14)),
                      ),
                    ),
                    const SizedBox(width: 5),
                    MatchSchduleTeamNameText(
                        teamName: teamDetails.teamName,
                        textAlign: TextAlign.end),
                    const SizedBox(width: 5),
                    MatchSchduleTeamImageText(teamDetails: teamDetails),
                  ]),
      ),
    );
  }
}
