import 'package:flutter/material.dart';

import '../../../picker_screen/view/picker_screen.dart';

class PlaylistEmptyWidgets extends StatelessWidget {
  const PlaylistEmptyWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/tv.png",
            width: MediaQuery.sizeOf(context).width / 1.5,
          ),
          const SizedBox(height: 15),
          const Text(
            "PlayList is Empty",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  //   isScrollControlled: true,
                  context: context,
                  builder: (context) =>
                      const SizedBox(height: 150, child: PickerScreen()));
            },
            style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.white),
                backgroundColor:
                    WidgetStateProperty.all(Colors.deepPurple[900])),
            child: const Text("Get Content"),
          )
        ],
      ),
    );
  }
}
