import 'package:flutter/material.dart';

import '../../../model/match_schedule_model/team_details.dart';

class MatchSchduleTeamImageText extends StatelessWidget {
  const MatchSchduleTeamImageText({
    super.key,
    required this.teamDetails,
  });

  final TeamDetails teamDetails;

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 25,
      fit: BoxFit.fill,
      height: 25,
      image: NetworkImage(teamDetails.teamLogo),
    );
  }
}
