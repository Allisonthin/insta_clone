// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PostedVideos extends StatefulWidget {
  String videoName;
  PostedVideos({super.key, required this.videoName});

  @override
  State<PostedVideos> createState() => _PostedVideosState();
}

class _PostedVideosState extends State<PostedVideos> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(widget.videoName)
      ..setLooping(true)
      ..initialize().then((value) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Text("kasjflksf");
    return _controller.value.isInitialized
        ? Container(
            width: 100,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.amber,
              // borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: VideoPlayer(_controller),
            ),
          )
        : Container(
            width: 100,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.red,
              // borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          );
  }
}
