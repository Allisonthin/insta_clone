import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/src/home_module/widgets/Post.Suggest.dart';
import 'package:insta_clone/src/home_module/widgets/post.widget.dart';

import '../../../core/Color.dart';
import '../logic/uploadedReelList.dart';
import '../widgets/Post.Title.dart';

@RoutePage()
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const TitleWidget(),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.heart),
            onPressed: () {},
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
            onPressed: () {},
          ),
        ],
      ),
      // body: const Text("kajfldskf")
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ReelList(),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return index % 4 == 0 && index != 0
                      ? const SuggestedReel()
                      : const PostWidget(
                          img: "https://source.unsplash.com/random/?fruits");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
