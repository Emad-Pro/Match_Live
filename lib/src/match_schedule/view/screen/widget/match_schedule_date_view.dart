import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../cubit/match_schedule_cubit.dart';

class MatchSchduleDateView extends StatelessWidget {
  const MatchSchduleDateView({super.key, required this.state});
  final MatchScheduleState state;
  @override
  Widget build(BuildContext context) {
    final matchSchduleCubit = getIt<MatchScheduleCubit>();
    final selectedDate =
        matchSchduleCubit.convertDateTimeStyle(state.selectedDateMatch);
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '${"The most important matches of the day".tr(context)} $selectedDate',
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
          ),
        ],
      ),
    );
  }
}
