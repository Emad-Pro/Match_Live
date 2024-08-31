import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_sec_item.dart';
import '../../../../category/view/screen/category_sccreen.dart';

class MainViewBodyWidget extends StatelessWidget {
  const MainViewBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSecItem(
            titleText: "Server Live Main",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategorySccreen()));
            }),
        CustomSecItem(titleText: "Arabic Series", onTap: () {}),
        CustomSecItem(titleText: "Ramdan Series 2024", onTap: () {}),
        CustomSecItem(titleText: "Arabic Movies", onTap: () {}),
        CustomSecItem(titleText: "Plays", onTap: () {}),
        CustomSecItem(titleText: "SpaceToon", onTap: () {})
      ],
    );
  }
}
