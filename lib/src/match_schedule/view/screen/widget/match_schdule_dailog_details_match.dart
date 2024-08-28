import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_dividor.dart';
import 'match_schdule_dailog_details_close_button.dart';
import 'match_schdule_dailog_details_custom_tile.dart';

class MatchSchduleDailogDetailsMatch extends StatelessWidget {
  const MatchSchduleDailogDetailsMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        MatchSchduleDailogDetailsCloseButton(),
        MatchSchduleDailogDetailsCustomTile(
          imagePath: "assets/images/winning.png",
          title: "champion",
          value: "الدوري الالماني",
        ),
        CustomDividor(),
        MatchSchduleDailogDetailsCustomTile(
          imagePath: "assets/images/football-field.png",
          title: "stadiom",
          value: "السانتياغو بيرنابيو",
        ),
        CustomDividor(),
        MatchSchduleDailogDetailsCustomTile(
          imagePath: "assets/images/television.png",
          title: "channel",
          value: "BeIn Sports 1",
        ),
        CustomDividor(),
        MatchSchduleDailogDetailsCustomTile(
          imagePath: "assets/images/mic.png",
          title: "commentator",
          value: "خليل البلوشي",
        ),
        CustomDividor(),
        MatchSchduleDailogDetailsCustomTile(
          imagePath: "assets/images/calendar.png",
          title: "Hour",
          value: "12:30 م",
        )
      ],
    );
  }
}
