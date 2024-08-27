import 'package:flutter/material.dart';

import 'screen/widget/main_view_body_widget.dart';
import 'widget/main_app_bar.dart';
import 'widget/main_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context),
      drawer: const MainDrawer(),
      body: const MainViewBodyWidget(),
    );
  }
}
