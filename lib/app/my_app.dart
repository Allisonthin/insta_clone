import 'package:flutter/material.dart';
import 'package:insta_clone/core/Color.dart';

import '../routes/Route_import.dart';

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

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // theme: ThemeData,
    //   themeMode: ThemeMode.dark,
    //   darkTheme: ThemeData.dark(),
    //   home: WatchReelPage(),
    // );
  }
}
