import 'package:flutter/material.dart';

class MainBuildSectionsLiveWidget extends StatelessWidget {
  const MainBuildSectionsLiveWidget({
    super.key,
    required this.titleText,
    required this.onTap,
    this.widget,
  });
  final String titleText;
  final void Function() onTap;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget ?? const Icon(Icons.live_tv),
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
