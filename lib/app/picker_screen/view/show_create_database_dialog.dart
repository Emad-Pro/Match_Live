import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/get_it/service_locator.dart';
import '../presenter/cubit/picker_cubit.dart';
import 'listener/create_playlist_listener.dart';

Future<dynamic> showCreateDatabaseDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text("Create New PlayList"),
            content: BlocConsumer<PickerCubit, PickerState>(
              bloc: getIt<PickerCubit>(),
              listener: (context, state) {
                createPlaylistListener(state, context);
              },
              builder: (context, state) {
                return SizedBox(
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "Channels Count : ${state.parseM3Uchannels!.length}"),
                      TextField(
                        controller: getIt<PickerCubit>().titleController,
                        decoration: const InputDecoration(
                          labelText: "Title",
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: ElevatedButton(
                              onPressed: () {
                                getIt<PickerCubit>()
                                    .onCreatePlayList(state.parseM3Uchannels!);
                              },
                              child: const Text("Save")))
                    ],
                  ),
                );
              },
            ),
          ));
}
