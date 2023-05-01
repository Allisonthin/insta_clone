import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  String src;
  ContentScreen({super.key, required this.src});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          src,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
