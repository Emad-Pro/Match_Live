import 'package:flutter/material.dart';
import 'package:live_match/core/localizations/localizations_service.dart';
import 'package:live_match/core/responsive/responsive_text.dart';

mainAppBar(context) => AppBar(
      title: Text(
        "Live Tv",
        style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 20),
            fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {
              showDatePicker(
                context: context,
                firstDate: DateTime(
                  2024,
                ),
                lastDate: DateTime(
                  2025,
                ),
              );
            },
            icon: const Icon(Icons.calendar_month)),
        PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Send App".tr(context))),
                  PopupMenuItem(child: Text("Visit WebSite".tr(context)))
                ]),
      ],
    );
