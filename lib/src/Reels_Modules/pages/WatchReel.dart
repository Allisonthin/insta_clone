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
  WatchReelPage({super.key});

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
        child: Stack(
          children: [
            // (
            //   itemCount: 5,
            //   itemBuilder: (context, index) {
            //     return ContentScreen(
            //         src: "https://source.unsplash.com/random/?nature");
            //   },
            //   scrollDirection: Axis.vertical,
            // ),
            PageView(
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Reels",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  FaIcon(
                    FontAwesomeIcons.camera,
                    size: 30,
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/?nature",
                              // fit: BoxFit.cover,
                            ),
                            radius: 20,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "name",
                          // style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 80,
                          height: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Follow",
                                // style: TextStyle(fontSize: 20),
                              )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("comments"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 82, 80, 80),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Color.fromARGB(255, 82, 80, 80),
                                  width: 1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.music_note),
                                Text("songs name")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 82, 80, 80),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Color.fromARGB(255, 82, 80, 80),
                                  width: 1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.location_on),
                                Text("songs name")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.heart,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text("8k"),
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.comment,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text("3k"),
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.paperPlane,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text("1k"),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://source.unsplash.com/random/?nature",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
