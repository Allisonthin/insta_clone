// ignore_for_file: deprecated_member_use

import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/Color.dart';
import '../../../resources/auth_methods.dart';
import '../../../utils/utils.dart';
import '../../_login_module/pages/login_screen.dart';

@RoutePage()
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailTextFieldController =
      TextEditingController();

  final TextEditingController _passTextFieldController =
      TextEditingController();

  final TextEditingController _usernameTextFieldController =
      TextEditingController();

  final TextEditingController _bioTextFieldController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  Uint8List? _image;

  @override
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
    final inputborder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // shared freespace
                  const SizedBox(
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
                  TextFormField(
                    controller: _usernameTextFieldController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your username";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: inputborder,
                      hintText: "enter your username",

                      // style border when cursor is on that textfield
                      focusedBorder: inputborder,

                      // style border when cursor is not on that textfield
                      enabledBorder: inputborder,
                      filled: true,
                      contentPadding: const EdgeInsets.all(8),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  //textfield for email
                  // TextFieldInput(
                  //   hintText: "Enter your email",
                  //   textInputType: TextInputType.emailAddress,
                  //   txteditingController: _emailTextFieldController,
                  // ),
                  TextFormField(
                    controller: _emailTextFieldController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: inputborder,
                      hintText: "enter your email",

                      // style border when cursor is on that textfield
                      focusedBorder: inputborder,

                      // style border when cursor is not on that textfield
                      enabledBorder: inputborder,
                      filled: true,
                      contentPadding: const EdgeInsets.all(8),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // textfield for password
                  // TextFieldInput(
                  //   hintText: "Enter your password",
                  //   textInputType: TextInputType.text,
                  //   txteditingController: _passTextFieldController,
                  //   ispass: true,
                  // ),
                  TextFormField(
                    controller: _passTextFieldController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: inputborder,
                      hintText: "enter your password",

                      // style border when cursor is on that textfield
                      focusedBorder: inputborder,

                      // style border when cursor is not on that textfield
                      enabledBorder: inputborder,
                      filled: true,
                      contentPadding: const EdgeInsets.all(8),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  //textfield for user bio
                  // TextFieldInput(
                  //   hintText: "Enter your bio",
                  //   textInputType: TextInputType.text,
                  //   txteditingController: _bioTextFieldController,
                  // ),
                  TextFormField(
                    controller: _bioTextFieldController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your bio";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: inputborder,
                      hintText: "enter your bio",

                      // style border when cursor is on that textfield
                      focusedBorder: inputborder,

                      // style border when cursor is not on that textfield
                      enabledBorder: inputborder,
                      filled: true,
                      contentPadding: const EdgeInsets.all(8),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                  ),

                  const SizedBox(
                    height: 24,
                  ),
                  // signupform(
                  //     usernameTextFieldController: _usernameTextFieldController,
                  //     emailTextFieldController: _emailTextFieldController,
                  //     passTextFieldController: _passTextFieldController,
                  //     bioTextFieldController: _bioTextFieldController),
                  // textfield for username

                  // text
                  InkWell(
                    onTap: () async {
                      if (_formkey.currentState!.validate()) {
                        String result = await AuthMethods().signUpUser(
                          username: _usernameTextFieldController.text,
                          email: _emailTextFieldController.text,
                          password: _passTextFieldController.text,
                          bio: _bioTextFieldController.text,
                          file: _image!,
                        );
                        print(result);
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        color: blueColor,
                      ),
                      child: const Text("Sign Up"),
                    ),
                  ),

                  const SizedBox(
                    height: 90,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(" Already have account?"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
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
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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

// class signupform extends StatelessWidget {
//   const signupform({
//     super.key,
//     required TextEditingController usernameTextFieldController,
//     required TextEditingController emailTextFieldController,
//     required TextEditingController passTextFieldController,
//     required TextEditingController bioTextFieldController,
//   })  : _usernameTextFieldController = usernameTextFieldController,
//         _emailTextFieldController = emailTextFieldController,
//         _passTextFieldController = passTextFieldController,
//         _bioTextFieldController = bioTextFieldController;

//   final TextEditingController _usernameTextFieldController;
//   final TextEditingController _emailTextFieldController;
//   final TextEditingController _passTextFieldController;
//   final TextEditingController _bioTextFieldController;

//   @override
//   Widget build(BuildContext context) {
//     final inputborder =
//         OutlineInputBorder(borderSide: Divider.createBorderSide(context));
//     return Form(
//       key: ,
//         child: Column(
//       children: [
        // TextFieldInput(
        //   hintText: "Enter your username",
        //   textInputType: TextInputType.text,
        //   txteditingController: _usernameTextFieldController,
        // ),
        // TextFormField(
        //   controller: _usernameTextFieldController,
        //   validator: (value) {
        //     if (value == null || value.isEmpty) {
        //       return "please enter your username";
        //     }
        //     return null;
        //   },
        //   decoration: InputDecoration(
        //     border: inputborder,
        //     hintText: "enter your username",

        //     // style border when cursor is on that textfield
        //     focusedBorder: inputborder,

        //     // style border when cursor is not on that textfield
        //     enabledBorder: inputborder,
        //     filled: true,
        //     contentPadding: const EdgeInsets.all(8),
        //   ),
        //   keyboardType: TextInputType.text,
        //   obscureText: false,
        // ),

        // const SizedBox(
        //   height: 24,
        // ),

        // //textfield for email
        // // TextFieldInput(
        // //   hintText: "Enter your email",
        // //   textInputType: TextInputType.emailAddress,
        // //   txteditingController: _emailTextFieldController,
        // // ),
        // TextFormField(
        //   controller: _emailTextFieldController,
        //   validator: (value) {
        //     if (value == null || value.isEmpty) {
        //       return "please enter your email";
        //     }
        //     return null;
        //   },
        //   decoration: InputDecoration(
        //     border: inputborder,
        //     hintText: "enter your email",

        //     // style border when cursor is on that textfield
        //     focusedBorder: inputborder,

        //     // style border when cursor is not on that textfield
        //     enabledBorder: inputborder,
        //     filled: true,
        //     contentPadding: const EdgeInsets.all(8),
        //   ),
        //   keyboardType: TextInputType.emailAddress,
        //   obscureText: false,
        // ),

        // const SizedBox(
        //   height: 24,
        // ),

        // // textfield for password
        // // TextFieldInput(
        // //   hintText: "Enter your password",
        // //   textInputType: TextInputType.text,
        // //   txteditingController: _passTextFieldController,
        // //   ispass: true,
        // // ),
        // TextFormField(
        //   controller: _passTextFieldController,
        //   validator: (value) {
        //     if (value == null || value.isEmpty) {
        //       return "please enter your password";
        //     }
        //     return null;
        //   },
        //   decoration: InputDecoration(
        //     border: inputborder,
        //     hintText: "enter your password",

        //     // style border when cursor is on that textfield
        //     focusedBorder: inputborder,

        //     // style border when cursor is not on that textfield
        //     enabledBorder: inputborder,
        //     filled: true,
        //     contentPadding: const EdgeInsets.all(8),
        //   ),
        //   keyboardType: TextInputType.text,
        //   obscureText: true,
        // ),

        // const SizedBox(
        //   height: 24,
        // ),

        // //textfield for user bio
        // // TextFieldInput(
        // //   hintText: "Enter your bio",
        // //   textInputType: TextInputType.text,
        // //   txteditingController: _bioTextFieldController,
        // // ),
        // TextFormField(
        //   controller: _bioTextFieldController,
        //   validator: (value) {
        //     if (value == null || value.isEmpty) {
        //       return "please enter your bio";
        //     }
        //     return null;
        //   },
        //   decoration: InputDecoration(
        //     border: inputborder,
        //     hintText: "enter your bio",

        //     // style border when cursor is on that textfield
        //     focusedBorder: inputborder,

        //     // style border when cursor is not on that textfield
        //     enabledBorder: inputborder,
        //     filled: true,
        //     contentPadding: const EdgeInsets.all(8),
        //   ),
        //   keyboardType: TextInputType.text,
        //   obscureText: false,
        // ),

        // const SizedBox(
        //   height: 24,
        // ),
//       ],
//     ));
//   }
// }
