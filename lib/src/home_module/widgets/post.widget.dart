import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/circleSize.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key, required this.img});
  final String img;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  static bool islike = false;
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
            widget.img,
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
                  onPressed: () {
                    setState(() {
                      islike = !islike;
                    });
                  },

                  // icon: const Icon(Iconsax.heart),
                  icon: islike == false
                      ? const FaIcon(
                          FontAwesomeIcons.heart,
                          size: 20,
                        )
                      : const FaIcon(
                          FontAwesomeIcons.solidHeart,
                          size: 20,
                          color: Colors.red,
                        ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.comment,
                    size: 20,
                  ),
                  // icon: const Icon(Iconsax.message),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.paperPlane,
                    size: 20,
                  ),
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
