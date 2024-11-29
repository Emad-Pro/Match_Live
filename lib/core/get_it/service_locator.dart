import 'package:get_it/get_it.dart';
import 'package:live_match/app/main_layout/presenter/cubit/main_cubit.dart';
import 'package:live_match/app/picker_screen/presenter/cubit/picker_cubit.dart';
import 'package:live_match/core/theme/cubit/theme_cubit.dart';

import 'package:live_match/app/video_player/presenter/video_player_cubit.dart';

import '../../app/iptv_screen/presenter/cubit/iptv_cubit.dart';
import '../../app/iptv_settings_screen/presenter/cubit/iptv_settings_cubit.dart';
import '../../app/video_player/model/player_service/player_service.dart';
import '../localizations/cubit/localizations_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerFactory(() => PlayerService());
    getIt.registerLazySingleton(() => ThemeCubit());
    getIt.registerLazySingleton(() => LocalizationsCubit());
    getIt.registerFactory(() => VideoPlayerCubit(getIt()));
    getIt.registerLazySingleton(() => MainCubit());
    getIt.registerLazySingleton(() => PickerCubit());
    getIt.registerLazySingleton(() => IptvCubit());
    getIt.registerLazySingleton(() => IptvSettingsCubit());
  }
}
