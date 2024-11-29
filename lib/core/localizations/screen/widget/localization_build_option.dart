import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../get_it/service_locator.dart';
import '../../../responsive/responsive_text.dart';
import '../../cubit/localizations_cubit.dart';

class LocalizationBuildOption extends StatelessWidget {
  const LocalizationBuildOption(
      {Key? key, required this.locale, required this.title})
      : super(key: key);
  final Locale locale;
  final String title;
  @override
  Widget build(BuildContext context) {
    final isSelected = getIt<LocalizationsCubit>().state == locale;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected
            ? colorScheme.primary.withOpacity(0.25)
            : colorScheme.onSecondary.withOpacity(0.5),
        border: Border.all(
          width: 1,
          color: isSelected ? colorScheme.primary : colorScheme.surface,
        ),
      ),
      child: ListTile(
        title: Text(
          title.tr(context),
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 20),
            fontWeight: FontWeight.w100,
          ),
        ),
        onTap: () {
          getIt<LocalizationsCubit>().changeLocale(locale);
        },
        trailing: Radio<Locale>(
          value: locale,
          groupValue: getIt<LocalizationsCubit>().state,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
