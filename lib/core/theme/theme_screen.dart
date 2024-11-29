import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'screen/widget/theme_build_option.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        title: Text("Theme".tr(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ThemeBuildOption(
              mode: ThemeMode.light,
              icon: Icons.light_mode,
              title: "Light Mode".tr(context),
            ),
            const SizedBox(height: 15),
            ThemeBuildOption(
              mode: ThemeMode.dark,
              icon: Icons.dark_mode,
              title: "Dark Mode".tr(context),
            ),
            const SizedBox(height: 15),
            ThemeBuildOption(
              mode: ThemeMode.system,
              icon: Icons.auto_awesome,
              title: "System Mode".tr(context),
            ),
          ],
        ),
      ),
    );
  }
}
