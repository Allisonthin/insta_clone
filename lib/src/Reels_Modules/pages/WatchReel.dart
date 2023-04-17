// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/src/Reels_Modules/widgets/contentReels.dart';

@RoutePage()
class WatchReelPage extends StatelessWidget {
  const WatchReelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Stack(
          children: [
            ContentScreen(),
          ],
        ),
      )),
    );
  }
}
