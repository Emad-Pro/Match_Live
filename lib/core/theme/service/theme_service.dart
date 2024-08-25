import 'package:flutter/material.dart';

import '../../shared_pref/shared_pref.dart';

class ThemeService {
  // var Key Theme
  static const String _themeKey = 'theme_key';

  // var Theme Data
  static ThemeData? themeData;

  // toggle Theme Var
  static bool isDarkTheme = false;
  // load themeing
  static void loadTheme() async {
    final theme = await CacheHelper.getData(key: _themeKey);
    if (theme == "dark") {
      themeData = ThemeData.dark();
      isDarkTheme = true;
    } else {
      themeData = ThemeData.light();
      isDarkTheme = false;
    }
  }

  // toggle themeing
  static void toggleTheme(String themeValue) async {
    if (themeValue == "dark") {
      themeData = ThemeData.dark();
      isDarkTheme = true;
    } else {
      themeData = ThemeData.light();
      isDarkTheme = false;
    }
    await CacheHelper.saveData(key: _themeKey, value: themeValue);
  }
}
