import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_match/core/get_it/service_locator.dart';
import 'package:live_match/core/localizations/cubit/localizations_cubit.dart';

class MadeWithWidget extends StatelessWidget {
  const MadeWithWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationsCubit, LocalizationsState>(
      bloc: getIt<LocalizationsCubit>(),
      builder: (context, state) {
        return Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.locale.languageCode == "ar") const Text("🧡"),
              const Text(
                " Developed by @Emad-Younis With",
                textAlign: TextAlign.start,
              ),
              if (state.locale.languageCode == "en") const Text("🧡"),
            ],
          ),
        );
      },
    );
  }
}
