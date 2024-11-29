import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/channel_model/database.dart';
import '../../../../core/channel_model/playlist_model.dart';
import '../../../../core/enum/request_state.dart';

part 'iptv_state.dart';

class IptvCubit extends Cubit<IptvState> {
  IptvCubit() : super(IptvState());
  void getPlayList() {
    emit(state.copyWith(requestState: RequestState.loading));
    DatabaseService()
        .getData()
        .then((value) => emit(state.copyWith(
            playList: value, requestState: RequestState.success)))
        .catchError((onError) {
      emit(state.copyWith(errorMessage: onError.toString()));
    });
  }
}
