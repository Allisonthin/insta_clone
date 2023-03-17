import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/src/utils/colors.dart';
import 'package:insta_clone/widgets/text_field_input.dart';

class Signup_Screen extends StatefulWidget {
  Signup_Screen({super.key});

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  final TextEditingController _emailTextFieldController =
      TextEditingController();

  final TextEditingController _passTextFieldController =
      TextEditingController();

  final TextEditingController _usernameTextFieldController =
      TextEditingController();

  final TextEditingController _bioTextFieldController = TextEditingController();

  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailTextFieldController.dispose();
    _passTextFieldController.dispose();
    _usernameTextFieldController.dispose();
    _bioTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // shared freespace
              Flexible(
                child: Container(),
                flex: 2,
              ),
              // svg imagen : instagram image
              SvgPicture.asset(
                "assets/ic_instagram.svg",
                color: primaryColor,
                height: 64,
              ),

              const SizedBox(
                height: 30,
              ),

              // circular widgets for accept and show the selected filed
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY5Df5TJETbdbG-LTKAoa8KS-4RlZEJhmZAp_UGm4&s"),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_a_photo),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 24,
              ),

              // textfield for username
              TextFieldInput(
                hintText: "Enter your username",
                textInputType: TextInputType.text,
                txteditingController: _usernameTextFieldController,
              ),

              const SizedBox(
                height: 24,
              ),

              //textfield for email
              TextFieldInput(
                hintText: "Enter your email",
                textInputType: TextInputType.emailAddress,
                txteditingController: _emailTextFieldController,
              ),

              const SizedBox(
                height: 24,
              ),

              // textfield for password
              TextFieldInput(
                hintText: "Enter your password",
                textInputType: TextInputType.text,
                txteditingController: _passTextFieldController,
                ispass: true,
              ),

              const SizedBox(
                height: 24,
              ),

              //textfield for user bio
              TextFieldInput(
                hintText: "Enter your bio",
                textInputType: TextInputType.text,
                txteditingController: _bioTextFieldController,
              ),

              const SizedBox(
                height: 24,
              ),

              // text
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: const Text("Sign Up"),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: blueColor,
                  ),
                ),
              ),

              const SizedBox(
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
                    child: Text(" Already have account?"),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Log in",
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
