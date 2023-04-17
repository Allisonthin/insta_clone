// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UploadReelPage extends StatelessWidget {
  const UploadReelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("uploadReel")),
    );
  }
}
