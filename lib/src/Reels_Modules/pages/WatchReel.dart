// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/main.dart';
import 'package:insta_clone/src/Reels_Modules/data/reelImage.dart';
import 'package:insta_clone/src/Reels_Modules/widgets/contentReels.dart';
import 'package:insta_clone/src/Reels_Modules/widgets/postedReels.dart';

@RoutePage()
class WatchReelPage extends StatefulWidget {
  const WatchReelPage({super.key});

  @override
  State<WatchReelPage> createState() => _WatchReelPageState();
}

class _WatchReelPageState extends State<WatchReelPage> {
  PageController controller = PageController();
  late int _num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {});
          },
          children: [
            const PostedReel(),
            const PostedReel(),
            const PostedReel(),
            const PostedReel(),
            Container(
              child: const Center(child: Text("page one")),
            ),
            Container(
              child: const Center(child: Text("page two")),
            ),
            Container(
              child: const Center(child: Text("page  three")),
            ),
          ],
        ),
      )),
    );
  }
}
