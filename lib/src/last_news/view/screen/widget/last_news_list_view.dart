import 'package:flutter/material.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../cubit/last_news_cubit.dart';
import 'last_news_build_list_view_item.dart';

class LastNewsListView extends StatelessWidget {
  const LastNewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: getIt<LastNewsCubit>().news.length,
        itemBuilder: (context, index) {
          return LastNewsBuildListViewtem(
            news: getIt<LastNewsCubit>().news[index],
          );
        });
  }
}
