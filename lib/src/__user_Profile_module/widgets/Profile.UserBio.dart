import 'package:flutter/material.dart';
import 'package:insta_clone/core/UserData.dart';

class UserBio extends StatefulWidget {
  const UserBio({super.key});

  @override
  State<UserBio> createState() => _UserBioState();
}

class _UserBioState extends State<UserBio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UserData["username"].toString()),
          Text(UserData["bio"]),
        ],
      ),
    );
  }
}
