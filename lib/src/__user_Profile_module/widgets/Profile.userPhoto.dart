import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage:
              NetworkImage("https://source.unsplash.com/random/?user"),
        ),
        Column(
          children: const [
            Text(
              "9",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text("Posts"),
          ],
        ),
        Column(
          children: const [
            Text(
              "9",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text("Followers"),
          ],
        ),
        Column(
          children: const [
            Text(
              "9",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text("Following"),
          ],
        )
      ],
    );
  }
}
