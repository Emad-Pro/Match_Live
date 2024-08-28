import 'package:flutter/material.dart';

class CustomDividor extends StatelessWidget {
  const CustomDividor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
    );
  }
}
