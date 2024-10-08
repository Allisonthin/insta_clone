import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/routes/Route_import.gr.dart';
import 'package:insta_clone/src/_login_module/widgets/form_Widget.dart';

import '../../../resources/auth_methods.dart';
import '../../../utils/utils.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormWidget(
                onSaved: (value) async {
                  await AuthMethods()
                      .loginUser(
                          email: value["email"], password: value["password"])
                      .then((value) {
                    if (value == "successfully login") {
                      showShackBar(value, context);
                      context.router.push(const DashBoardRoute());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const DashBoardPage()));
                    } else {
                      showShackBar(value, context);
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
