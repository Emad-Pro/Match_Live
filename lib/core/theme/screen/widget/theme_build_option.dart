import 'package:flutter/material.dart';

import '../../../get_it/service_locator.dart';
import '../../../responsive/responsive_text.dart';
import '../../cubit/theme_cubit.dart';

class ThemeBuildOption extends StatelessWidget {
  const ThemeBuildOption(
      {Key? key, required this.mode, required this.icon, required this.title})
      : super(key: key);
  final ThemeMode mode;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    final isSelected = getIt<ThemeCubit>().state == mode;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? colorScheme.primary.withOpacity(0.25)
            : colorScheme.onSecondary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: isSelected ? colorScheme.primary : colorScheme.surface,
        ),
      ),
      child: ListTile(
        onTap: () {
          getIt<ThemeCubit>().updateTheme(mode);
        },
        leading: Icon(icon, color: isSelected ? colorScheme.primary : null),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? colorScheme.primary : null,
            fontSize: getResponsiveFontSize(context, fontSize: 20),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
