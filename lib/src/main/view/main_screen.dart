import 'package:flutter/material.dart';

import '../../../core/get_it/service_locator.dart';
import '../../../core/theme/cubit/theme_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () => getIt<ThemeCubit>().toggleTheme(),
        child: const Text("Toggle Theme"),
      ),
    );
  }
}
