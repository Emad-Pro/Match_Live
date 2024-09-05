import 'package:flutter/material.dart';

class CustomSecItem extends StatelessWidget {
  const CustomSecItem(
      {super.key, required this.titleText, required this.onTap, this.logoPath});
  final String titleText;
  final String? logoPath;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.red.shade400
              : Colors.red.shade900,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (logoPath != null)
                Image(width: 25, height: 25, image: NetworkImage(logoPath!)),
              if (logoPath == null) const Icon(Icons.live_tv),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(titleText),
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
