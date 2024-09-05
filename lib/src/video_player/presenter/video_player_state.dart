part of 'video_player_cubit.dart';

class VideoPlayerState extends Equatable {
  final BetterPlayerController? videoPlayerController;

  final RequestState requestState;

  final String errorMessage;

  const VideoPlayerState({
    this.videoPlayerController,
    this.requestState = RequestState.loading,
    this.errorMessage = '',
  });
  VideoPlayerState copyWith({
    BetterPlayerController? videoPlayerController,
    RequestState? requestState,
    String? errorMessage,
  }) {
    return VideoPlayerState(
        requestState: requestState ?? this.requestState,
        videoPlayerController:
            videoPlayerController ?? this.videoPlayerController,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  List<Object?> get props => [
        videoPlayerController,
        requestState,
        errorMessage,
      ];
}

enum PlaybackState {
  initial,
  loading,
  ready,
  playing,
  paused,
  completed,
  buffering,
  error,
}
