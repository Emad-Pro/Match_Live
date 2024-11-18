import 'package:get_it/get_it.dart';
import 'package:live_match/core/theme/cubit/theme_cubit.dart';
import 'package:live_match/src/main_layout/presenter/cubit/main_cubit.dart';
import 'package:live_match/src/video_player/presenter/video_player_cubit.dart';

import '../../src/main_layout/screens/picker_sccreen/presenter/cubit/picker_cubit.dart';
import '../../src/video_player/model/player_service/player_service.dart';
import '../localizations/cubit/localizations_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerFactory(() => PlayerService());
    getIt.registerLazySingleton(() => ThemeCubit());
    getIt.registerLazySingleton(() => LocalizationsCubit());
    getIt.registerLazySingleton(() => MainCubit());
    getIt.registerLazySingleton(() => PickerCubit());
    getIt.registerFactory(() => VideoPlayerCubit(getIt()));
  }
}
