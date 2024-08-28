import 'package:flutter/material.dart';

class MatchSchduleDailogDetailsCloseButton extends StatelessWidget {
  const MatchSchduleDailogDetailsCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Colors.red[900]),
          child: const Icon(
            Icons.close,
            color: Colors.white,
            weight: 20,
          ),
        ),
      ),
    );
  }
}
