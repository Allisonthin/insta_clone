// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ReelList extends StatefulWidget {
  const ReelList({super.key});

  @override
  State<ReelList> createState() => _ReelListState();
}

class _ReelListState extends State<ReelList> {
  List item = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            // width: double.infinity,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: item.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      children: [
                        Stack(
                          children: const [
                            CircleAvatar(
                              radius: 23.5,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  backgroundImage: NetworkImage(
                                      "https://source.unsplash.com/random/?nature"),
                                  radius: 20,
                                  // child: Text("d"),
                                ),
                              ),
                            ),
                          ],
                          // child:
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "name",
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
