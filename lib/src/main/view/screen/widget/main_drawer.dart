import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'package:live_match/src/match_schedule/view/screen/match_schedule_screen.dart';

import '../../../../../core/widget/custom_list_tile.dart';
import '../../../../settings/view/screen/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      // width: 200,
      child: Column(
        children: [
          Icon(
            Icons.tv_rounded,
            size: 65,
            color: colorScheme.primary,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 25),
            child: Text("Live TV".tr(context)),
          ),
          CustomListTile(
              titleText: "Sections".tr(context),
              leadingIcon: Icons.category,
              onTap: () => Navigator.pop(context)),
          CustomListTile(
            titleText: "Match schedule".tr(context),
            leadingIcon: Icons.calendar_month,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MatchScheduleScreen()));
            },
          ),
          CustomListTile(
            titleText: "Last News".tr(context),
            leadingIcon: Icons.newspaper,
            onTap: () {},
          ),
          CustomListTile(
            titleText: "Contact Us".tr(context),
            leadingIcon: Icons.email,
            onTap: () {},
          ),
          CustomListTile(
            titleText: "FaceBook".tr(context),
            leadingIcon: Icons.facebook,
            onTap: () {},
          ),
          CustomListTile(
            titleText: "Settings".tr(context),
            leadingIcon: Icons.settings,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          )
        ],
      ),
    );
  }
}
