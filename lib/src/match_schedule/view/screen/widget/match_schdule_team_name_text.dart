import 'package:flutter/material.dart';

import '../../../../../core/localizations/localizations_service.dart';
import '../../../../../core/responsive/responsive_text.dart';
import '../../../model/match_schedule_model/team_name.dart';

class MatchSchduleTeamNameText extends StatelessWidget {
  const MatchSchduleTeamNameText(
      {super.key, required this.teamName, required this.textAlign});
  final TextAlign textAlign;
  final TeamName teamName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 4,
      child: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        LocalizationsService.locale.languageCode == 'ar'
            ? teamName.arName
            : teamName.enName,
        textAlign: textAlign,
        style:
            TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 14)),
      ),
    );
  }
}
