import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Instagram",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (4 / 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 231, 227),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phone number, email or username",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (4 / 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 231, 227),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (4 / 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Log in"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (4 / 5),
                height: MediaQuery.of(context).size.width * (1 / 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.7,
                        blurRadius: 0.6,
                        offset: Offset(0.5, 1),
                      ),
                    ],
                    color: Colors.white),
                child: Text(
                  "Forgot your login details? Get help logging in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
