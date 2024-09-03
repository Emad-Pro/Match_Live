part of 'channel_cubit.dart';

@freezed
class ChannelState with _$ChannelState {
  const factory ChannelState.loading() = _Loading;
  const factory ChannelState.loaded(ChannelModel model) = _Loaded;
  const factory ChannelState.erorr(String erorrMessage) = _Erorr;
}
