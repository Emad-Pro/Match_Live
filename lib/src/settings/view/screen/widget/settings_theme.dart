import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../../../../core/theme/cubit/theme_cubit.dart';
import '../../../../../core/theme/service/theme_service.dart';
import 'custom_tile_widget.dart';

class SettingsTheme extends StatelessWidget {
  const SettingsTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTileWidget(
      actionTileIconData: Icons.dark_mode,
      actionTitleTileText: "Dark Mode".tr(context),
      actionTileWidget: BlocBuilder<ThemeCubit, ThemeState>(
        bloc: getIt<ThemeCubit>(),
        builder: (context, state) {
          return Switch(
            value: ThemeService.isDarkTheme,
            onChanged: (value) {
              getIt<ThemeCubit>().toggleTheme();
            },
          );
        },
      ),
    );
  }
}
