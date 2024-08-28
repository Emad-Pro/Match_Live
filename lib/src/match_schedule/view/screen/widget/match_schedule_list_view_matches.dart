import 'package:flutter/material.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../cubit/match_schedule_cubit.dart';
import '../match_schedule_list_item.dart';

class MatchSchduleListViewMatchs extends StatelessWidget {
  const MatchSchduleListViewMatchs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: getIt<MatchScheduleCubit>().matches.length,
        separatorBuilder: (context, index) {
          return Container(
            height: 5,
          );
        },
        itemBuilder: (context, index) {
          final match = getIt<MatchScheduleCubit>().matches[index];
          return MatchScheduleBuildListViewItem(match: match);
        },
      ),
    );
  }
}
