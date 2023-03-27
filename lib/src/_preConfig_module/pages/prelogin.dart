import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:insta_clone/src/home_module/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../_login_module/pages/login_screen.dart';

class Pre_Login extends StatefulWidget {
  const Pre_Login({super.key});

  @override
  State<Pre_Login> createState() => _Pre_LoginState();
}

class _Pre_LoginState extends State<Pre_Login> {
  late String finalemail;

  Widget currentwidget = Login_Screen();
  @override
  void initState() {
    dataValidation().whenComplete(() async {
      finalemail == null
          ? currentwidget = Login_Screen()
          : currentwidget = Home_Screen();
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
    print(finalemail);
  }

  @override
  Widget build(BuildContext context) {
    return currentwidget;
  }
}
