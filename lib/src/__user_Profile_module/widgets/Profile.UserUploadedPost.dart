import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/main.dart';
import 'package:insta_clone/src/__user_Profile_module/widgets/Gallery.dart';
import 'package:insta_clone/src/__user_Profile_module/widgets/IgTv.dart';
import 'package:insta_clone/src/__user_Profile_module/widgets/Reels.dart';

class UserUploadedPost extends StatefulWidget {
  UserUploadedPost({super.key});

  @override
  State<UserUploadedPost> createState() => _UserUploadedPostState();
}

class _UserUploadedPostState extends State<UserUploadedPost>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 1,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_on_sharp,
                      // color: Colors.white,
                    ),
                  ),
                  Tab(icon: FaIcon(FontAwesomeIcons.clapperboard)),
                  Tab(icon: FaIcon(FontAwesomeIcons.idCardClip)),
                ],
              ),
            ),
            Container(
              height: 1000, //height of TabBarView
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  border:
                      Border(top: BorderSide(color: Colors.grey, width: 0.5))),
              child: const TabBarView(
                children: [
                  Gallery(),
                  IgTv(),
                  Reels(),

                  // Icon(Icons.place_outlined),

                  // Icon(Icons.abc),
                  // Icon(Icons.outbond),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
