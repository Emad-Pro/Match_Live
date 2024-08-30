import 'package:flutter/material.dart';
import 'package:live_match/core/responsive/responsive_text.dart';

import 'widget/last_news_list_view.dart';

class LastNewsScreen extends StatelessWidget {
  const LastNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.surface,
          title: Text(
            "Last News",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18)),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
          ],
        ),
        body: const LastNewsListView());
  }
}
