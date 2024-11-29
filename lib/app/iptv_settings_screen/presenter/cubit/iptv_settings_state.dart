part of 'iptv_settings_cubit.dart';

class IptvSettingsState extends Equatable {
  final RequestState removeAllChannelState;
  final String? removeAllChannelMessage;
  final bool logoChannel;

  IptvSettingsState(
      {this.removeAllChannelState = RequestState.init,
      this.removeAllChannelMessage,
      this.logoChannel = true});

  IptvSettingsState copyWith({
    RequestState? removeAllChannelState,
    String? removeAllChannelMessage,
    bool? logoChannel,
  }) {
    return IptvSettingsState(
      removeAllChannelState:
          removeAllChannelState ?? this.removeAllChannelState,
      removeAllChannelMessage:
          removeAllChannelMessage ?? this.removeAllChannelMessage,
      logoChannel: logoChannel ?? this.logoChannel,
    );
  }

  @override
  List<Object?> get props =>
      [removeAllChannelState, removeAllChannelMessage, logoChannel];
}
