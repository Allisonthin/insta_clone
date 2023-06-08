import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IgTv extends StatefulWidget {
  const IgTv({super.key});

  @override
  State<IgTv> createState() => _IgTvState();
}

class _IgTvState extends State<IgTv> {
  ScrollController scrollController2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        controller: scrollController2,
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
                "https://source.unsplash.com/random/?animal",
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
