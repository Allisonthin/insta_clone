import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/src/__user_Profile_module/widgets/Profile.UserUploadedPost.dart';
import 'package:insta_clone/src/__user_Profile_module/widgets/highlight_post.dart';

import '../widgets/Profile.Profile_Edit.dart';
import '../widgets/Profile.UserBio.dart';
import '../widgets/Profile.userPhoto.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.lock,
          size: 20,
        ),
        title: const Text('user profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const UserDetail(),
            const SizedBox(
              height: 5,
            ),
            const UserBio(),
            const SizedBox(
              height: 7,
            ),
            ProfileEdit(),
            const SizedBox(
              height: 7,
            ),
            HightlightPost(),
            const SizedBox(
              height: 7,
            ),
            UserUploadedPost(),
          ]),
        ),
      ),
    );
  }
}
