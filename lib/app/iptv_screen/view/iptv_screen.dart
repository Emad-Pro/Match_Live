import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/app/iptv_screen/presenter/cubit/iptv_cubit.dart';
import '../../../core/enum/request_state.dart';
import '../../../core/get_it/service_locator.dart';
import '../../iptv_settings_screen/presenter/cubit/iptv_settings_cubit.dart';
import '../../video_player/view/screens/video_player_screen.dart';
import 'widgets/playlist_empty_widgets.dart';

class IptvScreen extends StatelessWidget {
  const IptvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<IptvCubit, IptvState>(
          bloc: getIt<IptvCubit>()..getPlayList(),
          builder: (context, state) {
            switch (state.requestState) {
              case RequestState.init:
              case RequestState.loading:
                return const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Text("Loading ...")
                    ],
                  ),
                );
              case RequestState.success:
                return state.playList!.isEmpty
                    ? const PlaylistEmptyWidgets()
                    : ListView.separated(
                        itemCount: state.playList!.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) => ListTile(
                            onTap: () {
                              if (kDebugMode) {
                                print(state.playList![index].image);
                              }
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoPlayerScreen(
                                          url: state.playList![index].url!)));
                            },
                            leading: BlocBuilder<IptvSettingsCubit,
                                IptvSettingsState>(
                              bloc: getIt<IptvSettingsCubit>(),
                              builder: (context, iptvSettingsState) {
                                return ClipRRect(
                                    child: iptvSettingsState.logoChannel == true
                                        ? Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: ClipRRect(
                                              child: CachedNetworkImage(
                                                fit: BoxFit.scaleDown,
                                                imageUrl: state
                                                    .playList![index].image!,
                                                progressIndicatorBuilder:
                                                    (context, url,
                                                            downloadProgress) =>
                                                        CircularProgressIndicator(
                                                            value:
                                                                downloadProgress
                                                                    .progress),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        const Icon(Icons.error),
                                              ),
                                            ),
                                          )
                                        : const Icon(
                                            Icons.tv,
                                          ));
                              },
                            ),
                            subtitle:
                                Text("Channel Count ${state.playList!.length}"),
                            title: Text(state.playList![index].name!)),
                      );
              case RequestState.erorr:
                return Center(child: Text(state.errorMessage!));
            }
          }),
    );
  }
}
