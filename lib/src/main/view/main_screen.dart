import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/cubit/localizations_cubit.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../core/get_it/service_locator.dart';
import '../../../core/theme/cubit/theme_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => getIt<ThemeCubit>().toggleTheme(),
            child: const Text("Toggle Theme"),
          ),
          ElevatedButton(
            onPressed: () =>
                getIt<LocalizationsCubit>().changeLocale(Locale('ar')),
            child: Text("ar".tr(context)),
          ),
          ElevatedButton(
            onPressed: () =>
                getIt<LocalizationsCubit>().changeLocale(Locale('en')),
            child: Text("en".tr(context)),
          ),
        ],
      ),
    );
  }
}
