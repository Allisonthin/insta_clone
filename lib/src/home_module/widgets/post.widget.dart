import 'package:flutter/material.dart';

import '../../../core/circleSize.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: userProfileSize,
                  backgroundImage: const NetworkImage(
                      "https://source.unsplash.com/random/?user"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "username",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ],
                    ),
                    const Text(
                      "sponsored",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined)),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 550,
          child: Image.network(
            "https://source.unsplash.com/random/?post",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  // visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  // icon: const Icon(Iconsax.heart),
                  icon: Icon(Icons.star),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star),
                  // icon: const Icon(Iconsax.message),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star),
                  // icon: const Icon(Iconsax.send_2),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_outlined))
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "1k likes",
        ),
        const Text("comments"),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Views all 50 comments",
          style: TextStyle(fontSize: 10),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: userProfileSize - 5,
              backgroundImage: const NetworkImage(
                  "https://source.unsplash.com/random/?user"),
            ),
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comments",
                    fillColor: Colors.amber,
                    focusColor: Colors.blue),
              ),
            ),
          ],
        )
      ],
    );
  }
}
