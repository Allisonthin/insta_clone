import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostedReel extends StatefulWidget {
  const PostedReel({super.key});

  @override
  State<PostedReel> createState() => _PostedReelState();
}

class _PostedReelState extends State<PostedReel> {
  // PostedReels reelList = new PostedReels();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          child: Image.network(
            "https://source.unsplash.com/random/?nature",
            fit: BoxFit.contain,
          ),
        ),
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
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "name",
                    // style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 33,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1)),
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
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text("comments"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 80, 80),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: const Color.fromARGB(255, 82, 80, 80),
                            width: 1)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.music_note),
                          Text("songs name")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 80, 80),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: const Color.fromARGB(255, 82, 80, 80),
                            width: 1)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.location_on),
                          Text("songs name")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
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
              const Text("8k"),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.comment,
                  size: 30,
                ),
                onPressed: () {},
              ),
              const Text("3k"),
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.paperPlane,
                  size: 30,
                ),
                onPressed: () {},
              ),
              const Text("1k"),
              IconButton(
                icon: const Icon(
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
    ]);
  }
}
