import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:better_player/better_player.dart';

import '../../../core/enum/request_state.dart';
import '../model/player_service/player_service.dart';

part 'video_player_state.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  BetterPlayerController? _controller;
  final PlayerService playerService;

  VideoPlayerCubit(this.playerService) : super(const VideoPlayerState());

  @override
  Future<void> close() async {
    _disposeController();

    super.close();
  }

  Future<void> loadVideo(String url) async {
    try {
      await _disposeController();

      final dataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        liveStream: true,
        url,
      );

      _controller = BetterPlayerController(
        BetterPlayerConfiguration(
          translations: [
            BetterPlayerTranslations(
              languageCode: "ar",
              generalDefaultError: "حدث خطأ",
              generalNone: "لا يوجد",
              generalDefault: "افتراضي",
              generalRetry: "إعادة المحاولة",
              playlistLoadingNextVideo: "تحميل الفيديو التالي",
              controlsLive: "مباشر",
              controlsNextVideoIn: "الفيديو التالي خلال",
              qualityAuto: "تلقائي",
              overflowMenuAudioTracks: "الصوت",
              overflowMenuSubtitles: "الترجمة",
              overflowMenuPlaybackSpeed: "سرعة التشغيل",
              overflowMenuQuality: "الجودة",
            ),
          ],
          autoPlay: true,
          aspectRatio: 16 / 9,
        ),
        betterPlayerDataSource: dataSource,
      );

      _controller!.addEventsListener(_listenToChanges);

      emit(state.copyWith(
        requestState: RequestState.success,
        videoPlayerController: _controller,
      ));

      _controller?.play();
    } catch (e) {
      emit(state.copyWith(
        requestState: RequestState.erorr,
        errorMessage: e.toString(),
      ));
    }
  }

  void _listenToChanges(BetterPlayerEvent event) {}

  Future<void> _disposeController() async {
    _controller?.dispose();
    _controller = null;
  }
}
