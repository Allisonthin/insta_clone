import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/page%20UI/signup_screen.dart';
import 'package:insta_clone/src/utils/colors.dart';
import 'package:insta_clone/widgets/text_field_input.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final TextEditingController _emailTextFieldController =
      TextEditingController();
  final TextEditingController _passTextFieldController =
      TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailTextFieldController.dispose();
    _passTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              // svg image
              SvgPicture.asset(
                "assets/ic_instagram.svg",
                color: primaryColor,
                height: 64,
              ),

              const SizedBox(
                height: 30,
              ),

              TextFieldInput(
                hintText: "Enter your email",
                textInputType: TextInputType.emailAddress,
                txteditingController: _emailTextFieldController,
              ),

              SizedBox(
                height: 24,
              ),

              TextFieldInput(
                hintText: "Enter your password",
                textInputType: TextInputType.text,
                txteditingController: _passTextFieldController,
                ispass: true,
              ),

              SizedBox(
                height: 24,
              ),

              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text("Log in"),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: blueColor,
                  ),
                ),
              ),

              SizedBox(
                height: 12,
              ),

              Flexible(
                child: Container(),
                flex: 2,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(" Don't have an account?"),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signup_Screen()));
                    },
                    child: Container(
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
