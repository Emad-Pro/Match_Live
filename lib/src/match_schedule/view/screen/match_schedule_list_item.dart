import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive_text.dart';
import '../../model/match_schedule_model/match_schedule_model.dart';
import 'widget/match_schdule_dailog_details_match.dart';
import 'widget/match_schdule_team_details_widget.dart';

class MatchScheduleBuildListViewItem extends StatelessWidget {
  const MatchScheduleBuildListViewItem({
    super.key,
    required this.match,
  });

  final MatchScheduleModel match;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: MatchSchduleDailogDetailsMatch(),
                  ));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchSchduleTeamDetailsWidget(
                  teamNum: 1, teamDetails: match.teamOneDetails),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(2)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        child: Text('لم يبدأ',
                            style: TextStyle(
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 10))),
                      ),
                      Text(match.time,
                          style: TextStyle(
                              fontSize: getResponsiveFontSize(context,
                                  fontSize: 14))),
                    ],
                  ),
                ),
              ),
              MatchSchduleTeamDetailsWidget(
                teamNum: 2,
                teamDetails: match.teamOneDetails,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
