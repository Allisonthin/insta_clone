import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insta_clone/page%20UI/login_screen.dart';
import 'package:insta_clone/resources/auth_methods.dart';
import 'package:insta_clone/src/utils/colors.dart';
import 'package:insta_clone/src/utils/utils.dart';
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

  Uint8List? _image;

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
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // shared freespace
                SizedBox(
                  height: 70,
                ),
                // svg imagen : instagram image
                logo(),

                const SizedBox(
                  height: 30,
                ),

                // circular widgets for accept and show the selected filed
                avatar(),

                const SizedBox(
                  height: 24,
                ),
                signupform(
                    usernameTextFieldController: _usernameTextFieldController,
                    emailTextFieldController: _emailTextFieldController,
                    passTextFieldController: _passTextFieldController,
                    bioTextFieldController: _bioTextFieldController),
                // textfield for username

                // text
                InkWell(
                  onTap: () async {
                    print("bumvastic");
                    String result = await Auth_Methods().signUpUser(
                      username: _usernameTextFieldController.text,
                      email: _emailTextFieldController.text,
                      password: _passTextFieldController.text,
                      bio: _bioTextFieldController.text,
                    );

                    print(result);
                  },
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
                  height: 90,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(" Already have account?"),
                      padding: EdgeInsets.symmetric(vertical: 8),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Screen()));
                      },
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
      ),
    );
  }

  Stack avatar() {
    return Stack(
      children: [
        // checking image source global variable is null or not
        _image != null
            ? CircleAvatar(
                radius: 64,
                backgroundImage: MemoryImage(_image!),
              )
            : const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY5Df5TJETbdbG-LTKAoa8KS-4RlZEJhmZAp_UGm4&s"),
              ),
        Positioned(
          bottom: -10,
          left: 80,
          child: IconButton(
            onPressed: selectImage,
            icon: const Icon(Icons.add_a_photo),
            color: Colors.blue,
          ),
        )
      ],
    );
  }

  SvgPicture logo() {
    return SvgPicture.asset(
      "assets/ic_instagram.svg",
      color: primaryColor,
      height: 64,
    );
  }

  void selectImage() async {
    Uint8List im = await pickImagee(ImageSource.gallery);

    setState(() {
      // assigning image source to a global variable
      _image = im;
    });
  }
}

class signupform extends StatelessWidget {
  const signupform({
    super.key,
    required TextEditingController usernameTextFieldController,
    required TextEditingController emailTextFieldController,
    required TextEditingController passTextFieldController,
    required TextEditingController bioTextFieldController,
  })  : _usernameTextFieldController = usernameTextFieldController,
        _emailTextFieldController = emailTextFieldController,
        _passTextFieldController = passTextFieldController,
        _bioTextFieldController = bioTextFieldController;

  final TextEditingController _usernameTextFieldController;
  final TextEditingController _emailTextFieldController;
  final TextEditingController _passTextFieldController;
  final TextEditingController _bioTextFieldController;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
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
      ],
    ));
  }
}
