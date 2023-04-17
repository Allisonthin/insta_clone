import 'package:flutter/material.dart';
import 'package:insta_clone/src/home_module/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../_login_module/pages/login_screen.dart';

class PreLogin extends StatefulWidget {
  const PreLogin({super.key});

  @override
  State<PreLogin> createState() => PreLoginState();
}

class PreLoginState extends State<PreLogin> {
  late String finalemail;

  Widget currentwidget = const LoginScreen();
  @override
  void initState() {
    dataValidation().whenComplete(() async {
      // ignore: unnecessary_null_comparison
      finalemail == null
          ? currentwidget = const LoginScreen()
          : currentwidget = const HomeScreenPage();
    });

    // TODO: implement initState
    super.initState();
  }

  Future dataValidation() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString("email");
    setState(() {
      finalemail = obtainedEmail!;
    });
    // print(finalemail);
  }

  @override
  Widget build(BuildContext context) {
    return currentwidget;
  }
}
