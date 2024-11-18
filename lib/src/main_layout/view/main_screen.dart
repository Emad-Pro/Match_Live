import 'package:flutter/material.dart';

import 'package:live_match/src/main_layout/screens/picker_sccreen/view/picker_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PickerScreen());
  }
}
