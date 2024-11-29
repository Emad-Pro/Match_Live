import 'package:flutter/material.dart';

import '../../get_it/service_locator.dart';
import '../../localizations/cubit/localizations_cubit.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff0d1019),
  cardTheme: const CardTheme(color: Color(0xFF1C1C1E)),
  textTheme: Typography().white.apply(
        fontFamily: getIt<LocalizationsCubit>().state.languageCode == "ar"
            ? "Cairo"
            : "Lato",
      ),
  colorScheme: const ColorScheme(
    primary: Color(0xff3adabe),
    primaryContainer: Color(0xff7b569b),
    secondary: Color(0xFF388E3C),
    secondaryContainer: Color(0xFF66BB6A),
    surface: Color(0xff0d1019),
    error: Color(0xFFCF6679),
    onPrimary: Colors.white,
    onSecondary: Color(0xff1a1d2e),
    onSurface: Colors.white70,
    onError: Colors.black,
    brightness: Brightness.dark,
  ),
);
