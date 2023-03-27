import 'package:flutter/material.dart';
import 'package:insta_clone/src/_preConfig_module/pages/prelogin.dart';
import '../core/Color.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: Pre_Login(),
    );
  }
}
