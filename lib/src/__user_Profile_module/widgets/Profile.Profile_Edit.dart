// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/routes/Route_import.gr.dart';

class ProfileEdit extends StatelessWidget {
  ProfileEdit({super.key});
  double buttonWidth = 135;
  double buttonHeight = 30;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: buttonWidth,
          height: buttonHeight,
          child: ElevatedButton(
            onPressed: () {
              context.router.navigate(const EditProfileRoute());
            },
            child: const Text("Edit Profile"),
          ),
        ),
        SizedBox(
            width: buttonWidth,
            height: buttonHeight,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Share Profile"))),
        IconButton(onPressed: () {}, icon: const Icon(Icons.person_add)),
      ],
    );
  }
}
