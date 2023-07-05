import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/core/Color.dart';
import 'package:insta_clone/src/home_module/logic/uploadedReelList.dart';
import 'package:insta_clone/src/home_module/widgets/searchbar.dart';

@RoutePage()
class MessengerPage extends StatefulWidget {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("username"),
        backgroundColor: mobileBackgroundColor,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.video_call_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_square)),
        ],
      ),
      body: Column(children: const [
        SearchBar(),
        SizedBox(
          height: 50,
        ),
        ReelList(),
      ]),
    );
  }
}
