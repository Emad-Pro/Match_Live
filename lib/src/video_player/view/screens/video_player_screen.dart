import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enum/request_state.dart';
import '../../../../core/get_it/service_locator.dart';
import '../../presenter/video_player_cubit.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: BlocProvider(
          create: (context) => getIt<VideoPlayerCubit>()..loadVideo(url),
          child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
              builder: (context, state) {
            switch (state.requestState) {
              case RequestState.loading:
                return const Center(child: CircularProgressIndicator());
              case RequestState.success:
                return BetterPlayer(controller: state.videoPlayerController!);
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
