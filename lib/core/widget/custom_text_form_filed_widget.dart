import 'package:flutter/material.dart';

class CustomTextFormFaildWidget extends StatelessWidget {
  const CustomTextFormFaildWidget(
      {super.key,
      this.readOnly = false,
      this.controller,
      this.hintText,
      this.onTap,
      this.initialValue});
  final bool readOnly;
  final TextEditingController? controller;
  final String? hintText;
  final void Function()? onTap;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onTap: onTap,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withOpacity(0.4))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withOpacity(0.4))),
          hintStyle: TextStyle(fontSize: 12),
          hintText: hintText),
      readOnly: readOnly,
    );
  }
}
