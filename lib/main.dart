import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:live_match/core/bloc/bloc_observer.dart';
import 'package:live_match/core/channel_model/database.dart';
import 'package:live_match/core/get_it/service_locator.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'package:live_match/core/shared_pref/shared_pref.dart';

import 'app/iptv_settings_screen/presenter/cubit/iptv_settings_cubit.dart';
import 'core/localizations/cubit/localizations_cubit.dart';
import 'core/theme/cubit/theme_cubit.dart';
import 'app/splash_screen/view/splash_screen.dart';
import 'core/theme/service/dark_theme.dart';
import 'core/theme/service/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  await CacheHelper.init();
  DatabaseService.init();
  getIt<IptvSettingsCubit>().getLogoChannel();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationsCubit, Locale>(
      bloc: getIt<LocalizationsCubit>(),
      builder: (context, locale) {
        return BlocBuilder<ThemeCubit, ThemeMode>(
          bloc: getIt<ThemeCubit>(),
          builder: (context, themeMode) {
            return MaterialApp(
              title: 'Live Match',
              debugShowCheckedModeBanner: false,
              locale: locale,
              supportedLocales: const [
                Locale('en'),
                Locale('ar'),
              ],
              localizationsDelegates: const [
                AppLocaliztions.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: themeMode,
              home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
