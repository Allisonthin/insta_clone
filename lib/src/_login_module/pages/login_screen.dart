import 'package:flutter/material.dart';
import 'package:insta_clone/src/_login_module/widgets/form_Widget.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  FormWidget form = new FormWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
