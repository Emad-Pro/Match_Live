import 'package:flutter/material.dart';

import '../../get_it/service_locator.dart';
import '../../localizations/cubit/localizations_cubit.dart';
import '../../shared_pref/shared_pref.dart';

class ThemeService {
  static String? customFontFamily() {
    return getIt<LocalizationsCubit>().state.locale.languageCode == 'en'
        ? 'nato_kufe'
        : 'noto_serif';
  }

  static ThemeData lightTheme =
      ThemeData(brightness: Brightness.light, fontFamily: customFontFamily());

  static ThemeData darkTheme =
      ThemeData(brightness: Brightness.dark, fontFamily: customFontFamily());

  // var Key Theme
  static const String _themeKey = 'theme_key';

  // toggle Theme Var
  static bool isDarkTheme = false;
  // load themeing
  static void loadTheme() async {
    final theme = await CacheHelper.getData(key: _themeKey);
    if (theme == "dark") {
      isDarkTheme = true;
    } else {
      isDarkTheme = false;
    }
  }

  ThemeMode themeApp() => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  // toggle themeing
  static void toggleTheme(String themeValue) async {
    if (themeValue == "dark") {
      isDarkTheme = true;
    } else {
      isDarkTheme = false;
    }
    await CacheHelper.saveData(key: _themeKey, value: themeValue);
  }
}
