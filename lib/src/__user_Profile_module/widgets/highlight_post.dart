import 'package:flutter/material.dart';
import 'package:insta_clone/src/__user_Profile_module/data/highlightData.dart';

class HightlightPost extends StatelessWidget {
  const HightlightPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListView.builder(
          itemCount: highlightList.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                            highlightList[index].thumbnail,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(highlightList[index].title),
                    ),
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            );
          })),
    );
  }
}
