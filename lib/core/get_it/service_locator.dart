import 'package:get_it/get_it.dart';
import 'package:live_match/core/theme/cubit/theme_cubit.dart';
import 'package:live_match/src/main/model/main_service/main_repo.dart';
import 'package:live_match/src/video_player/presenter/video_player_cubit.dart';

import '../../src/category/model/repo/category_repo.dart';
import '../../src/category/view/cubit/category_cubit.dart';
import '../../src/channels/view/cubit/channel_cubit.dart';
import '../../src/last_news/view/cubit/last_news_cubit.dart';
import '../../src/main/presenter/cubit/main_cubit.dart';
import '../../src/match_schedule/view/cubit/match_schedule_cubit.dart';
import '../../src/video_player/model/player_service/player_service.dart';
import '../localizations/cubit/localizations_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerFactory<MainRepository>(() => MainRepositoryImp());
    getIt.registerFactory<CategoryRepository>(() => CategoryRepositoryImp());
    getIt.registerFactory(() => PlayerService());
    getIt.registerLazySingleton(() => ThemeCubit());
    getIt.registerLazySingleton(() => LocalizationsCubit());
    getIt.registerLazySingleton(() => MatchScheduleCubit());
    getIt.registerLazySingleton(() => LastNewsCubit());
    getIt.registerLazySingleton(() => CategoryCubit(getIt()));
    getIt.registerLazySingleton(() => ChannelCubit());
    getIt.registerLazySingleton(() => MainCubit(getIt()));
    getIt.registerFactory(() => VideoPlayerCubit(getIt()));
  }
}
