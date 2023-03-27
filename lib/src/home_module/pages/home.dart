import 'package:flutter/material.dart';
import 'package:insta_clone/src/_login_module/pages/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                SharedPreferences pre = await SharedPreferences.getInstance();
                pre.remove("email");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login_Screen()));
              },
              child: Text("sign out"))
        ],
      ),
    );
  }
}
