import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.titleText,
      required this.leadingIcon,
      required this.onTap});
  final String titleText;
  final IconData leadingIcon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: colorScheme.primary,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(titleText),
      ),
    );
  }
}
