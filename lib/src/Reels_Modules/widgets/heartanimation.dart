// not used

import 'dart:core';

import 'package:flutter/material.dart';

class heartAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool isaimating;
  final Duration duration;

  const heartAnimationWidget(
      {super.key,
      required this.child,
      required this.isaimating,
      this.duration = const Duration(milliseconds: 150)});

  @override
  State<heartAnimationWidget> createState() => _heartAnimationWidgetState();
}

class _heartAnimationWidgetState extends State<heartAnimationWidget> {
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //https://youtu.be/5k8XFgRtPb4
    // controller = contro
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
