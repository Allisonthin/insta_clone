import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
        leading: const Icon(Icons.lock),
        title: const Text('user profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Tab()
        ]),
      ),
    );
  }
}
