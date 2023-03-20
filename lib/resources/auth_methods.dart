import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth_Methods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // for signup methods
  Future<String> signUpUser({
    required String username,
    required String email,
    required String password,
    required String bio,
    // here file is uploaded photo
    // required Uint8List file,
  }) async {
    String res = "Some error occurred";

    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        print("userid is ${cred.user!.uid}");

        //adding user detail in firestore database
        await _firestore.collection("Users").doc(cred.user!.uid).set({
          "username": username,
          "uid": cred.user!.uid,
          "email": email,
          "bio": bio,
          "followers": [],
          "following": [],
        });

        res = "success";
      }
    } catch (err) {
      res = "error occured";
    }
    return res;
  }
}
