// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/core/Color.dart';
import 'package:insta_clone/src/__signup_module/pages/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormWidget extends StatefulWidget {
  final ValueChanged<Map<String, dynamic>> onSaved;

  const FormWidget({super.key, required this.onSaved});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final TextEditingController _emailTextFieldController =
      TextEditingController();
  final TextEditingController _passTextFieldController =
      TextEditingController();

  final _formkey = GlobalKey<FormState>();

  bool _isloading = false;

  void loginUser() async {
    setState(() {
      _isloading = true;
    });
    setState(() {
      _isloading = false;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailTextFieldController.dispose();
    _passTextFieldController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // widget.email;
    final inputborder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Flexible(
          //   child: Container(),
          //   flex: 2,
          // ),
          // svg image
          const SizedBox(
            height: 300,
          ),
          SvgPicture.asset(
            "assets/ic_instagram.svg",
            color: primaryColor,
            height: 64,
          ),

          const SizedBox(
            height: 30,
          ),

          TextFormField(
            controller: _emailTextFieldController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your email";
              }
              // widget.email = _emailTextFieldController.text;
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

          InkWell(
            onTap: () async {
              if (_formkey.currentState!.validate()) {
                // _formkey.currentState!.save();

                // Text(widget.email);

                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.setString("email", _emailTextFieldController.text);
                loginUser();
                widget.onSaved({
                  "email": _emailTextFieldController.text,
                  "password": _passTextFieldController.text
                });
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
              child: _isloading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text("Log in"),
            ),
          ),

          const SizedBox(
            height: 170,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(" Don't have an account?"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
