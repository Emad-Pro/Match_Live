import 'package:flutter/material.dart';
import '../../shared_pref/shared_pref.dart';

class ThemeService {
  static ThemeData lightTheme(Locale locale) =>
      ThemeData.light(useMaterial3: true);

  static ThemeData darkTheme(Locale locale) =>
      ThemeData.dark(useMaterial3: true);
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
