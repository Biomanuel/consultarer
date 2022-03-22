import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoBackground extends StatelessWidget {
  const VideoBackground({
    Key? key,
    required this.videoController,
  }) : super(key: key);

  final videoController;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.fill,
        child: SizedBox(
          width: videoController.value.size?.width ?? 0,
          height: videoController.value.size?.height ?? 0,
          child: VideoPlayer(videoController),
        ),
      ),
    );
  }
}
