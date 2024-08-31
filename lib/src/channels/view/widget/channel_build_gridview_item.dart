import 'package:flutter/material.dart';

class ChannelBuildGridViewItem extends StatelessWidget {
  const ChannelBuildGridViewItem({
    Key? key,
    required this.links,
    this.logo,
    required this.name,
  }) : super(key: key);
  final List<String> links;
  final String? logo;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logo != null
                    ? Image(
                        image: NetworkImage(logo!),
                        width: 35,
                        height: 35,
                      )
                    : const Icon(Icons.wifi_channel),
                const Text(
                  "asaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
              ],
            )),
      ),
    );
  }
}
