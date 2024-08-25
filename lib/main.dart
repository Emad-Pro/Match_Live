import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/core/bloc/bloc_observer.dart';
import 'package:live_match/core/get_it/service_locator.dart';
import 'package:live_match/core/shared_pref/shared_pref.dart';
import 'package:live_match/src/main/view/main_screen.dart';

import 'core/theme/cubit/theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      bloc: getIt<ThemeCubit>(),
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: getIt<ThemeCubit>().themeData,
          home: const MainScreen(),
        );
      },
    );
  }
}
