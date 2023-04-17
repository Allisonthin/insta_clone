import 'package:flutter/material.dart';
import 'package:insta_clone/routes/Route_import.dart';
import '../core/Color.dart';

class MyApp extends StatelessWidget {
  final _approute = AppRouter();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      routerConfig: _approute.config(),
    );
  }
}
