import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'package:live_match/core/responsive/responsive_text.dart';

import '../../get_it/service_locator.dart';
import '../cubit/localizations_cubit.dart';
import 'widget/localization_build_option.dart';

class LocalizationsScreen extends StatelessWidget {
  const LocalizationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language App".tr(context)),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              LocalizationBuildOption(locale: Locale("en"), title: "English"),
              SizedBox(height: 15),
              LocalizationBuildOption(locale: Locale("ar"), title: "Arabic"),
            ],
          )),
    );
  }
}
