import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/page%20UI/signup_screen.dart';
import 'package:insta_clone/src/utils/colors.dart';

import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   print("web");
  //   await Firebase.initializeApp(
  //       options: const FirebaseOptions(
  //     apiKey: "AIzaSyDRXNhyLGyQ0ZoVYypBv_xiebjskJ7AbQE",
  //     appId: "1:690348411436:web:390527ab8b5082cc135f89",
  //     messagingSenderId: "690348411436",
  //     projectId: "insta-clone-331b1",
  //     storageBucket: "insta-clone-331b1.appspot.com",
  //   ));
  // } else {
  //   print("laskjdfl;ksd");
  //   await Firebase.initializeApp();
  //   print("ajdlklsdk");
  // }
  print("before");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("after");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: Signup_Screen(),
    );
  }
}
