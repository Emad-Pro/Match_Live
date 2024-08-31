import 'package:get_it/get_it.dart';
import 'package:live_match/core/theme/cubit/theme_cubit.dart';

import '../../src/category/view/cubit/category_cubit.dart';
import '../../src/channels/view/cubit/channel_cubit.dart';
import '../../src/last_news/view/cubit/last_news_cubit.dart';
import '../../src/match_schedule/view/cubit/match_schedule_cubit.dart';
import '../localizations/cubit/localizations_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerLazySingleton(() => ThemeCubit());

    getIt.registerLazySingleton(() => LocalizationsCubit());
    getIt.registerLazySingleton(() => MatchScheduleCubit());
    getIt.registerLazySingleton(() => LastNewsCubit());
    getIt.registerLazySingleton(() => CategoryCubit());
    getIt.registerLazySingleton(() => ChannelCubit());
  }
}
