import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/src/match_schedule/view/screen/widget/match_schdule_appbar.dart';
import '../../../../core/get_it/service_locator.dart';
import '../cubit/match_schedule_cubit.dart';
import 'widget/match_schedule_date_view.dart';
import 'widget/match_schedule_list_view_matches.dart';

class MatchScheduleScreen extends StatelessWidget {
  const MatchScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MatchSchduleAppBar(),
      body: BlocBuilder<MatchScheduleCubit, MatchScheduleState>(
        bloc: getIt<MatchScheduleCubit>(),
        builder: (context, state) {
          return Column(
            children: [
              MatchSchduleDateView(state: state),
              const SizedBox(height: 5),
              const MatchSchduleListViewMatchs(),
            ],
          );
        },
      ),
    );
  }
}
