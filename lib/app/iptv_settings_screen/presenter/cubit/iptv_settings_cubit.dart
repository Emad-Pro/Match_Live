import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:live_match/core/channel_model/database.dart';
import 'package:live_match/core/enum/request_state.dart';
import 'package:live_match/core/shared_pref/shared_pref.dart';

part 'iptv_settings_state.dart';

class IptvSettingsCubit extends Cubit<IptvSettingsState> {
  IptvSettingsCubit() : super(IptvSettingsState()) {
    getLogoChannel();
  }

  removeAllChannel() async {
    emit(state.copyWith(removeAllChannelState: RequestState.loading));
    try {
      await DatabaseService().deleteAllData();
      emit(state.copyWith(removeAllChannelState: RequestState.success));
    } catch (e) {
      emit(state.copyWith(
          removeAllChannelState: RequestState.erorr,
          removeAllChannelMessage: e.toString()));
    }
  }

  toggleLogoChannel(bool value) async {
    await CacheHelper.saveData(key: "logo_chennel", value: value);
    await getLogoChannel();
  }

  getLogoChannel() async {
    final result = await CacheHelper.getData(key: "logo_chennel");
    emit(state.copyWith(logoChannel: result));
  }
}
