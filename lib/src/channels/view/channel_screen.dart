// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:live_match/src/category/model/model/category_model/list_channel.dart';

import '../../../core/responsive/responsive_text.dart';
import 'widget/channel_gridview.dart';

class ChannelScreen extends StatelessWidget {
  const ChannelScreen({super.key, required this.channels});
  final List<ListChannel> channels;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            channels[0].groupTitle!,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 20),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ChannelGridView(
          channel: channels,
        ));
  }
}
