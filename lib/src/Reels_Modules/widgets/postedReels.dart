import 'package:flutter/material.dart';
import 'package:insta_clone/src/Reels_Modules/data/model/reelsData.dart';

class PostedReel extends StatefulWidget {
  const PostedReel({super.key});

  @override
  State<PostedReel> createState() => _PostedReelState();
}

class _PostedReelState extends State<PostedReel> {
  // PostedReels reelList = new PostedReels();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        "https://source.unsplash.com/random/?nature",
        fit: BoxFit.contain,
      ),
    );
  }
}
