import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';

import '../../../../../core/responsive/responsive_text.dart';

class MatchSchduleDailogDetailsCustomTile extends StatelessWidget {
  const MatchSchduleDailogDetailsCustomTile({
    super.key,
    required this.title,
    required this.imagePath,
    this.value,
  });
  final String title;
  final String imagePath;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 20,
            height: 20,
          ),
          Text(
            " ${title.tr(context)}  : ",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 14)),
          ),
          Text(
            value ?? '',
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
