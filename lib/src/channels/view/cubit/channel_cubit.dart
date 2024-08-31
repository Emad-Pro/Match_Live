import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_match/src/channels/model/channel_model.dart';

part 'channel_state.dart';
part 'channel_cubit.freezed.dart';

class ChannelCubit extends Cubit<ChannelState> {
  ChannelCubit() : super(ChannelState.loading());
}
