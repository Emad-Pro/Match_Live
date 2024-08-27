import 'package:flutter/material.dart';

class CustomTileWidget extends StatelessWidget {
  const CustomTileWidget(
      {super.key,
      required this.actionTileWidget,
      required this.actionTitleTileText,
      required this.actionTileIconData});
  final Widget actionTileWidget;
  final String actionTitleTileText;
  final IconData actionTileIconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2)),
      child: Row(
        children: [
          Icon(
            actionTileIconData,
            color: Theme.of(context).colorScheme.primary,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(actionTitleTileText),
          ),
          Spacer(),
          actionTileWidget
        ],
      ),
    );
  }
}
