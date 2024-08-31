// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/src/channels/view/cubit/channel_cubit.dart';

import '../../../core/get_it/service_locator.dart';
import 'widget/channel_gridview.dart';

class ChannelScreen extends StatelessWidget {
  const ChannelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mbc3"),
        ),
        body: BlocBuilder<ChannelCubit, ChannelState>(
          bloc: getIt<ChannelCubit>(),
          builder: (context, state) {
            return state.map(loading: (state) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, loaded: (state) {
              return const ChannelGridView();
            }, erorr: (state) {
              return Text(state.erorrMessage);
            });
          },
        ));
  }
}
