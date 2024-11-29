import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../shared_pref/shared_pref.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system) {
    loadTheme();
  }

  void updateTheme(ThemeMode theme) async {
    await CacheHelper.saveData(value: theme.toString(), key: "theme");
    emit(theme);
  }

  loadTheme() async {
    final theme = await CacheHelper.getData(key: "theme") ?? ThemeMode.system;
    print(theme);
    if (theme is ThemeMode) {
      emit(theme);
    } else if (theme is String && theme == 'ThemeMode.light') {
      emit(ThemeMode.light);
    } else if (theme is String && theme == 'ThemeMode.dark') {
      emit(ThemeMode.dark);
    }
  }
}
