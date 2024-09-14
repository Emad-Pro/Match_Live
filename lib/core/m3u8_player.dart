// import 'package:flutter/material.dart';
// import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

// class M3u8Player extends StatefulWidget {
//   const M3u8Player({Key? key, required this.url}) : super(key: key);
//   final String url;
//   @override
//   _M3u8PlayerState createState() => _M3u8PlayerState();
// }

// class _M3u8PlayerState extends State<M3u8Player> {
//   bool fullscreen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding:
//             fullscreen ? EdgeInsets.zero : const EdgeInsets.only(top: 32.0),
//         child: YoYoPlayer(
//           aspectRatio: 16 / 9,
//           url:
//               // 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
//               // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//               widget.url,
//           //"https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
//           allowCacheFile: true,
//           onCacheFileCompleted: (files) {
//             print('Cached file length ::: ${files?.length}');

//             if (files != null && files.isNotEmpty) {
//               for (var file in files) {
//                 print('File path ::: ${file.path}');
//               }
//             }
//           },
//           onCacheFileFailed: (error) {
//             print('Cache file error ::: $error');
//           },
//           videoStyle: const VideoStyle(
//             qualityStyle: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.w500,
//               color: Colors.white,
//             ),
//             forwardAndBackwardBtSize: 30.0,
//             playButtonIconSize: 40.0,
//             playIcon: Icon(
//               Icons.add_circle_outline_outlined,
//               size: 40.0,
//               color: Colors.white,
//             ),
//             pauseIcon: Icon(
//               Icons.remove_circle_outline_outlined,
//               size: 40.0,
//               color: Colors.white,
//             ),
//             videoQualityPadding: EdgeInsets.all(5.0),
//             // showLiveDirectButton: true,
//             // enableSystemOrientationsOverride: false,
//           ),
//           videoLoadingStyle: const VideoLoadingStyle(
//             loading: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 16.0),
//                   Text("Loading video..."),
//                 ],
//               ),
//             ),
//           ),
//           onFullScreen: (value) {
//             setState(() {
//               if (fullscreen != value) {
//                 fullscreen = value;
//               }
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
