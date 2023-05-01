import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IgTv extends StatefulWidget {
  const IgTv({super.key});

  @override
  State<IgTv> createState() => _IgTvState();
}

class _IgTvState extends State<IgTv> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("instagram")));
  }
}
