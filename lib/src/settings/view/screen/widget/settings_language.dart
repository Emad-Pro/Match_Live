import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../../../../core/localizations/cubit/localizations_cubit.dart';
import '../../../../../core/localizations/localizations_service.dart';
import 'custom_tile_widget.dart';

class SettingsLanguage extends StatelessWidget {
  const SettingsLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTileWidget(
      actionTileIconData: Icons.language,
      actionTitleTileText: "Language".tr(context),
      actionTileWidget: BlocBuilder<LocalizationsCubit, LocalizationsState>(
        bloc: getIt<LocalizationsCubit>(),
        builder: (context, state) {
          return PopupMenuButton(itemBuilder: (context) {
            final stateLanguageCode =
                LocalizationsService.locale.languageCode == 'ar';
            toggleColor(bool statusLanguageCode) => statusLanguageCode
                ? Theme.of(context).colorScheme.primary
                : null;
            return [
              PopupMenuItem(
                  onTap: () {
                    getIt<LocalizationsCubit>()
                        .changeLocale(const Locale('ar'));
                  },
                  child: Text('Arabic'.tr(context),
                      style: TextStyle(color: toggleColor(stateLanguageCode)))),
              PopupMenuItem(
                onTap: () {
                  getIt<LocalizationsCubit>().changeLocale(const Locale('en'));
                },
                child: Text('English'.tr(context),
                    style: TextStyle(color: toggleColor(!stateLanguageCode))),
              )
            ];
          });
        },
      ),
    );
  }
}
