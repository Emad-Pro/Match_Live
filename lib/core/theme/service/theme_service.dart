import 'package:flutter/material.dart';
import '../../shared_pref/shared_pref.dart';

class ThemeService {
  static ThemeData lightTheme(Locale locale) => ThemeData(
        fontFamily: locale.languageCode == 'ar' ? 'nato_kufe' : 'noto_serif',
        drawerTheme: DrawerThemeData(),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          primary: Colors.red,
          seedColor: const Color.fromARGB(255, 248, 17, 0),
        ),
      );

  static ThemeData darkTheme(Locale locale) => ThemeData(
        // اللون الأساسي الأحمر
        colorScheme: ColorScheme.fromSeed(
          primary: const Color.fromARGB(255, 153, 41, 33),
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 248, 17, 0),
        ),
        // اللون الأساسي الداكن الأحمر
        fontFamily: locale.languageCode == 'ar' ? 'nato_kufe' : 'noto_serif',
      );
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
