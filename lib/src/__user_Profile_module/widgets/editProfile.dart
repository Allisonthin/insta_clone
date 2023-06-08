import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/resources/auth_methods.dart';
import 'package:insta_clone/routes/Route_import.gr.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  AuthMethods authMethods = AuthMethods();

  TextEditingController usernameUpdateController = TextEditingController();
  TextEditingController emailUpdateController = TextEditingController();
  TextEditingController bioUpdateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("username"),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: usernameUpdateController,
                style: const TextStyle(color: Colors.black87),
                decoration: const InputDecoration(
                  // fillColor: Colors.black87,
                  hintText: "edit your name",
                  hintStyle: TextStyle(color: Colors.black54),
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,

                  // labelText: "name",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("bio"),
          Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: bioUpdateController,
                style: const TextStyle(color: Colors.black87),
                decoration: const InputDecoration(
                  // fillColor: Colors.black87,
                  hintText: "edit your bio",
                  hintStyle: TextStyle(color: Colors.black54),
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,

                  // labelText: "name",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                await authMethods.Updata_database(
                  username: usernameUpdateController.text,
                  bio: bioUpdateController.text,
                );
              },
              child: const Text("Save")),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                await authMethods.signOut().whenComplete(() {
                  context.router.replaceAll([const LoginScreen()]);
                });
              },
              child: const Text("log out")),
        ]),
      ),
    );
  }
}
