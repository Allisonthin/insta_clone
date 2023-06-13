import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/resources/models/users.dart' as model;
import 'package:insta_clone/resources/sharedPref.dart';
import 'package:insta_clone/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference _firestore =
      FirebaseFirestore.instance.collection("Users");
  final UserSharedPreference userSharedPreference = UserSharedPreference();

  // for signup methods
  Future<String> signUpUser({
    required String username,
    required String email,
    required String password,
    required String bio,
    // here file is uploaded photo
    required Uint8List file,
  }) async {
    String res = "Some error occurred";

    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          file.isNotEmpty) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        // print("userid is ${cred.user!.uid}");

        String photoUrl = await StorageMethods()
            .uploadImageToStorage("profilePic", file, false);
        // print("mddilt");
        model.User user = model.User(
            email: email,
            uid: cred.user!.uid,
            username: username,
            bio: bio,
            photourl: photoUrl,
            followers: [],
            following: []);

        //adding user detail in firestore database
        await _firestore
            .doc(cred.user!.email)
            // .doc("my_id")
            .set(user.toJson());
        debugPrint('signin');
        UserSharedPreference.setValue(email: email, username: username);

        res = "success";
      }
    } catch (err) {
      res = '$err';
    }
    return res;
  }

  // login user

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "successfully login";
      } else {
        res = "please enter all the  field";
      }
    }
    // on FirebaseAuthException catch(e){
    //   if (e.code == "")
    // }

    catch (error) {
      res = "login error";
    }
    return res;
  }

  Future<void> Updata_database(
      {required String username, required String bio}) async {
    final docuser = _firestore.doc(_auth.currentUser!.email);

    docuser.update({
      "username": username,
      "bio": bio,
    });
  }

  Future<void> signOut() async {
    _auth.signOut();
    print("signout");
  }
}
