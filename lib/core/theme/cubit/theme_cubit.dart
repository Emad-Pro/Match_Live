import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_match/core/shared_pref/shared_pref.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.light()) {
    _loadTheme();
  }
  static const String _themeKey = 'theme_key';

  void toggleTheme() async {
    state.maybeWhen(
      light: () {
        emit(const ThemeState.dark());
        CacheHelper.saveData(key: _themeKey, value: 'dark');
      },
      dark: () {
        emit(const ThemeState.light());
        CacheHelper.saveData(key: _themeKey, value: 'light');
      },
      orElse: () {},
    );
  }

  ThemeData get themeData {
    return state.maybeWhen(
      light: () => ThemeData.light(),
      dark: () => ThemeData.dark(),
      orElse: () => ThemeData.light(),
    );
  }

  void _loadTheme() async {
    String? theme = CacheHelper.getData(key: _themeKey).toString();

    if (theme == 'dark') {
      emit(const ThemeState.dark());
    } else {
      emit(const ThemeState.light());
    }
  }
}
