import 'package:get_it/get_it.dart';
import 'package:live_match/core/theme/cubit/theme_cubit.dart';

import '../localizations/cubit/localizations_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerLazySingleton(() => ThemeCubit());

    getIt.registerLazySingleton(() => LocalizationsCubit());
  }
}
