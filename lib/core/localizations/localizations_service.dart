import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_match/core/shared_pref/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationsService {
  static Locale locale = Locale("en");
  late Map<String, String> _localizedStrings;

  LocalizationsService();

  static LocalizationsService of(BuildContext context) {
    return Localizations.of<LocalizationsService>(
        context, LocalizationsService)!;
  }

  static const LocalizationsDelegate<LocalizationsService> delegate =
      _LocalizationsServiceDelegate();

  Future<void> loadJsonLanguage() async {
    final jsonString = await rootBundle.loadString(
        'assets/lang/${LocalizationsService.locale.languageCode}.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key) => _localizedStrings[key] ?? '';

  static Future<void> setLocaleCode(String localeCode) async {
    final prefs = await SharedPreferences.getInstance();
    LocalizationsService.locale = Locale(localeCode);
    await prefs.setString('locale', localeCode);
  }

  static Future getLocaleCode() async {
    final localeValue = await CacheHelper.getData(key: 'locale');
    locale = Locale(localeValue ?? 'en');
  }
}

class _LocalizationsServiceDelegate
    extends LocalizationsDelegate<LocalizationsService> {
  const _LocalizationsServiceDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<LocalizationsService> load(Locale locale) async {
    LocalizationsService.locale = locale; // ضبط اللغة الثابتة هنا
    final localizations = LocalizationsService();
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<LocalizationsService> old) =>
      false;
}

extension TranslateX on String {
  String tr(BuildContext context) =>
      LocalizationsService.of(context).translate(this);
}
