// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:icodegram_app/models/story_model.dart';
// import 'package:video_player/video_player.dart';
//
// class StoryScreen extends StatefulWidget {
//   final List<Story> stories;
//   const StoryScreen({required this.stories});
//
//   @override
//   State<StoryScreen> createState() => _StoryScreenState();
// }
//
// class _StoryScreenState extends State<StoryScreen> {
//   late PageController _pageController;
//   late VideoPlayerController _videoPlayerController;
//   int _currentIndex = 0;
//
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _videoPlayerController =
//         VideoPlayerController.networkUrl(widget.stories[2].url as Uri)
//           ..initialize().then((value) => setState(() {}));
//     _videoPlayerController.play();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final Story story= widget.stories[_currentIndex];
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: GestureDetector(
//         onTapDown: (details) => _onTapDown(details, story),
//         child:
//
//       PageView.builder(
//         controller: _pageController,
//         itemCount: widget.stories.length,
//         itemBuilder: (context, i) {
//           final Story story = widget.stories[i];
//           switch (story.media) {
//             case MediaType.image:
//               return CachedNetworkImage(
//                 imageUrl: story.url,
//                 fit: BoxFit.cover,
//               );
//             case MediaType.video:
//               if (_videoPlayerController != null &&
//                   _videoPlayerController.value.isInitialized) {
//                 return FittedBox(
//                   fit: BoxFit.cover,
//                   child: SizedBox(
//                     width: _videoPlayerController.value.size.width,
//                     height: _videoPlayerController.value.size.height,
//                     child: VideoPlayer(_videoPlayerController),
//                   ),
//                 );
//               }
//           }
//           return const SizedBox.shrink();
//         },
//       ),
//       ),
//     );
//   }
//
//   void _onTapDown(TapDownDetails details, Story story) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final double dx = details.globalPosition.dx;
//     if (dx<screenWidth/3) {
// setState(() {
//   if (_currentIndex-1>=0){
//     _currentIndex -= 1;
//   }
// });
//     }else if (dx>2 * screenWidth/3) {
//       setState(() {
//         if(_currentIndex + 1< widget.stories.length) {
//           _currentIndex += 1;
//         }
//         else {
//           _currentIndex= 0;
//         }
//       });
//
//     }
//     else {
//       if (story.media == MediaType.video) {
//         if (_videoPlayerController.value.isPlaying) {
//           _videoPlayerController.pause();
//         }else{
//           _videoPlayerController.play();
//         }
//       }
//     }
//   }
// }
