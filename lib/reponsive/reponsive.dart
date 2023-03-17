import 'package:flutter/material.dart';
import 'package:insta_clone/src/utils/dimension.dart';

class ReponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ReponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > webScreenSize) {
        // web screen
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
