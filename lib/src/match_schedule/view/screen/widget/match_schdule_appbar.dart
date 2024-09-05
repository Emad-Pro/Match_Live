import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../../../core/get_it/service_locator.dart';
import '../../../../../core/responsive/responsive_text.dart';
import '../../cubit/match_schedule_cubit.dart';

class MatchSchduleAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MatchSchduleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final matchScheduleCubit = getIt<MatchScheduleCubit>();
    return AppBar(
      title: Text(
        'Match schedule'.tr(context),
        style:
            TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 20)),
      ),
      actions: [
        IconButton(
            onPressed: () {
              matchScheduleCubit.incrementDateTime();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        IconButton(
            onPressed: () {
              matchScheduleCubit.decrementDateTime();
            },
            icon: const Icon(Icons.arrow_forward_ios)),
        IconButton(
          onPressed: () {
            showDatePicker(
                    initialDate: matchScheduleCubit.state.selectedDateMatch,
                    currentDate: matchScheduleCubit.state.selectedDateMatch,
                    context: context,
                    firstDate: DateTime(2024, DateTime.now().month, 1),
                    lastDate: DateTime(2024, DateTime.now().month, 31))
                .then((onValue) {
              getIt<MatchScheduleCubit>().pickedDateTime(
                  onValue ?? matchScheduleCubit.state.selectedDateMatch);
            });
          },
          icon: const Icon(Icons.calendar_today),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
