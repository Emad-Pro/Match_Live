import 'package:flutter/material.dart';

import '../../get_it/service_locator.dart';
import '../../localizations/cubit/localizations_cubit.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  textTheme: Typography().black.apply(
        fontFamily: getIt<LocalizationsCubit>().state.languageCode == "ar"
            ? "cairo" // خط عربي أنيق
            : "lato", // خط إنجليزي عصري
      ),
  scaffoldBackgroundColor: const Color(0xfff8f9fd), // خلفية فاتحة وأنيقة
  colorScheme: const ColorScheme(
    primary: Color(0xff339f86), // بنفسجي غامق (لون حصري)
    primaryContainer: Color(0xff7b569b), // بنفسجي فاتح للتباين
    secondary: Color(0xFF43A047), // أخضر ليموني
    secondaryContainer: Color(0xFFA5D6A7), // أخضر فاتح
    surface: Color(0xfff8f9fd), // لون سطحي خفيف
    error: Color(0xFFD50000), // لون الخطأ
    onPrimary: Colors.white, // لون النص على اللون الأساسي
    onSecondary: Color(0xffffffff),
    onSurface: Colors.black87,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
);
