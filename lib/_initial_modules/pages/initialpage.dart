// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:insta_clone/routes/Route_import.gr.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Initialpage extends StatefulWidget {
//   const Initialpage({super.key});

//   @override
//   State<Initialpage> createState() => _InitialpageState();
// }

// class _InitialpageState extends State<Initialpage> {
//   var email;
//   @override
//   Future<void> initState() async {
//     // TODO: implement initState
//     super.initState();

//     SharedPreferences pref = await SharedPreferences.getInstance();

//     email = pref.getString("email");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return route();
//   }

//   Widget route() {
//     if (email == null) {
//       Navigator.push(context, MaterialPageRoute(builder: const LoginScreen()));
//     }
//   }
// }
