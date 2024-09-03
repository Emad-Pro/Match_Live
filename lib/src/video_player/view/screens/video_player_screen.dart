import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enum/request_state.dart';
import '../../../../core/get_it/service_locator.dart';
import '../../presenter/video_player_cubit.dart';
import '../widgets/video_player_view_body.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: BlocProvider(
          create: (context) =>
              getIt<VideoPlayerCubit>()..initializeVideoPlayer(url),
          child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
              // bloc: getIt<VideoPlayerCubit>(),
              builder: (context, state) {
            switch (state.requestState) {
              case RequestState.loading:
                return const Center(child: CircularProgressIndicator());
              case RequestState.success:
                return state.videoPlayerController!.value.isInitialized
                    ? VideoPlayerViewBody(state: state)
                    : Container();
              case RequestState.erorr:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.errorMessage),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Back"))
                  ],
                );
            }
          }),
        ),
      )),
    );
  }
}
