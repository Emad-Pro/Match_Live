part of 'iptv_cubit.dart';

class IptvState with EquatableMixin {
  final List<ChannelListModel>? playList;
  final RequestState requestState;
  final String? errorMessage;
  IptvState(
      {this.playList,
      this.requestState = RequestState.loading,
      this.errorMessage});
  IptvState copyWith({
    List<ChannelListModel>? playList,
    RequestState? requestState,
    String? errorMessage,
  }) {
    return IptvState(
      playList: playList ?? this.playList,
      requestState: requestState ?? this.requestState,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [playList, requestState, errorMessage];
}
