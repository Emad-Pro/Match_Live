import 'package:flutter/material.dart';

void customLoading(BuildContext context, String message) {
  showDialog(
    barrierDismissible: false, // Prevents dismissing by tapping outside
    context: context,
    builder: (context) {
      return PopScope(
        canPop: false, // Prevents back button dismissal
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(width: 20),
                Text(message),
              ],
            ),
          ),
        ),
      );
    },
  );
}
