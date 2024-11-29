import 'package:flutter/material.dart';

customSnackBar(BuildContext context, String message, Color color) {
  var snackBar = SnackBar(
    content: Text(message),
    backgroundColor: color,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    duration: const Duration(seconds: 5),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
