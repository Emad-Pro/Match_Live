import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:live_match/core/bloc/bloc_observer.dart';
import 'package:live_match/core/get_it/service_locator.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'package:live_match/core/shared_pref/shared_pref.dart';
import 'package:live_match/core/theme/service/theme_service.dart';
import 'package:live_match/src/main/view/main_screen.dart';

import 'core/localizations/cubit/localizations_cubit.dart';
import 'core/theme/cubit/theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  await CacheHelper.init();
  ThemeService.loadTheme();
  LocalizationsService.getLocaleCode();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationsCubit, LocalizationsState>(
      bloc: getIt<LocalizationsCubit>(),
      builder: (context, state) {
        return BlocBuilder<ThemeCubit, ThemeState>(
          bloc: getIt<ThemeCubit>(),
          builder: (context, state) {
            final locale = getIt<LocalizationsCubit>().state.locale;
            return MaterialApp(
              title: 'Live Match',
              debugShowCheckedModeBanner: false,
              locale: locale,
              supportedLocales: const [
                Locale('en'),
                Locale('ar'),
              ],
              localizationsDelegates: const [
                LocalizationsService.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: ThemeService.lightTheme(locale),
              darkTheme: ThemeService.darkTheme(locale),
              themeMode: ThemeService().themeApp(),
              home: const MainScreen(),
            );
          },
        );
      },
    );
  }
}
