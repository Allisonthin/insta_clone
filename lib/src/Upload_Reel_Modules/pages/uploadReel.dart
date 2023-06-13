// ignore_for_file: file_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:insta_clone/resources/sharedPref.dart';
import 'package:insta_clone/resources/uploadpost.dart';
import 'package:insta_clone/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class UploadReelPage extends StatefulWidget {
  const UploadReelPage({super.key});

  @override
  State<UploadReelPage> createState() => _UploadReelPageState();
}

class _UploadReelPageState extends State<UploadReelPage> {
  TextEditingController commentController = TextEditingController();
  Uint8List? _image;

  final Future<SharedPreferences> pref = SharedPreferences.getInstance();
  // late final String? uname;

  UserSharedPreference upref = UserSharedPreference();

  String? username;
  String? email;

  @override
  initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var u = await UserSharedPreference.getusername();
    var e = await UserSharedPreference.getemail();
    if (u != null && e != null) {
      setState(() {
        username = u;
        email = e;
      });
      // log(email!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final inputborder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text("uploadReel"),
        actions: [
          TextButton(
              onPressed: () async {
                // log(DateTime.now().toString());
                if (email != null && _image != null) {
                  await UploadPostMethod().upload(
                      email: email ?? "",
                      file: _image!,
                      comments: commentController.text);

                  showShackBar("uploaded", context);
                  // log("posted");
                } else {
                  showShackBar("select image", context);
                }
              },
              child: const Text(
                "share",
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // checking image source global variable is null or not
            _image != null
                ? Stack(children: [
                    SizedBox(
                      height: 350,
                      // width: double.infinity,
                      child: Center(
                        child: Image(
                          image: MemoryImage(_image!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        bottom: 10,
                        child: IconButton(
                            onPressed: () {
                              selectImage();
                            },
                            icon: const Icon(Icons.edit)))
                  ])
                : Stack(children: [
                    Container(
                      height: 350,
                      color: Colors.orange,
                    ),
                    Positioned(
                      left: 100,
                      top: 140,
                      child: TextButton(
                        onPressed: () {
                          // selectOption();
                          selectImage();
                        },
                        child: const Text(
                          "tap to select image",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ]),

            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: commentController,
              decoration: InputDecoration(
                border: inputborder,
                hintText: "write a comment",

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
          ],
        ),
      ),
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
