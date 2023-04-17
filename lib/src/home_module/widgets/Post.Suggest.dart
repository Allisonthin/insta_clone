import 'package:flutter/material.dart';

import '../data/suggestedReelList.dart';
import 'post.VideoPlayer.dart';

class SuggestedReel extends StatelessWidget {
  const SuggestedReel({super.key});

  // List item = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Suggested Reels"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: PostedVideos(videoName: reelList[1]),
                  // child: Image.network(
                  //   "https://source.unsplash.com/random/?adventure",
                  //   width: 100,
                  //   height: 150,
                  //   fit: BoxFit.fill,
                  // ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
