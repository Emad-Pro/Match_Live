import 'package:flutter/material.dart';
import 'package:live_match/src/category/model/model/category_model/list_channel.dart';

import 'channel_build_gridview_item.dart';

class ChannelGridView extends StatelessWidget {
  const ChannelGridView({super.key, required this.channel});
  final List<ListChannel> channel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: channel.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150),
      itemBuilder: (context, inde) => ChannelBuildGridViewItem(
        links: [
          channel[inde].url!,
        ],
        name: channel[inde].description,
        logo: channel[inde].tvgLogo,
      ),
    );
  }
}
