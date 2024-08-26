import 'package:flutter/material.dart';

import '../main_screen.dart';

class MainViewBodyWidget extends StatelessWidget {
  const MainViewBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainBuildSectionsLiveWidget(
          titleText: "Server Live Main",
          onTap: () {},
        ),
        MainBuildSectionsLiveWidget(
          titleText: "Arabic Series",
          onTap: () {},
        ),
        MainBuildSectionsLiveWidget(
          titleText: "Ramdan Series 2024",
          onTap: () {},
        ),
        MainBuildSectionsLiveWidget(
          titleText: "Arabic Movies",
          onTap: () {},
        ),
        MainBuildSectionsLiveWidget(
          titleText: "Plays",
          onTap: () {},
        ),
        MainBuildSectionsLiveWidget(
          titleText: "SpaceToon",
          onTap: () {},
        )
      ],
    );
  }
}
