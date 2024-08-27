import 'package:flutter/material.dart';

import 'package:live_match/core/localizations/localizations_service.dart';

import 'widget/settings_language.dart';
import 'widget/settings_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings".tr(context),
        ),
      ),
      body: const Column(
        children: [
          SettingsLanguage(),
          SettingsTheme(),
        ],
      ),
    );
  }
}
