import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/core/Color.dart';
import 'package:insta_clone/resources/auth_methods.dart';
import 'package:insta_clone/src/__signup_module/pages/signup_screen.dart';
import 'package:insta_clone/src/home_module/pages/home.dart';
import 'package:insta_clone/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormWidget extends StatefulWidget {
  String email = "";

  FormWidget({super.key});

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
    String result = await Auth_Methods().loginUser(
        email: _emailTextFieldController.text,
        password: _passTextFieldController.text);

    if (result == "successfully login") {
      showShackBar(result, context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home_Screen()));
    } else {
      showShackBar(result, context);
    }

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
          SizedBox(
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
            onSaved: (value) {
              setState(() {
                widget.email = value!;
              });
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

          SizedBox(
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

          SizedBox(
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
              }
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12),
              child: _isloading
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text("Log in"),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                color: blueColor,
              ),
            ),
          ),

          SizedBox(
            height: 170,
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup_Screen()));
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
    );
  }
}
