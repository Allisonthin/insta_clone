import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  ScrollController scrollController1 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        controller: scrollController1,
        crossAxisCount: 3,
        shrinkWrap: true,
        children: [
          for (int i = 0; i < 10; i++)
            Container(
              margin: EdgeInsets.only(
                right: 2,
                top: 2,
              ),
              child: Image.network(
                "https://source.unsplash.com/random/?bird",
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
