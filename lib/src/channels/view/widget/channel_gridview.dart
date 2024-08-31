import 'package:flutter/material.dart';

import 'channel_build_gridview_item.dart';

class ChannelGridView extends StatelessWidget {
  const ChannelGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150),
      itemBuilder: (context, inde) => const ChannelBuildGridViewItem(
        links: [
          "632",
        ],
        name: "66",
        logo: 'https://i.imgur.com/PVt8OPN_d.webp?maxwidth=760&fidelity=grand',
      ),
    );
  }
}
