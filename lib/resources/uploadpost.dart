import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:insta_clone/resources/models/post.dart' as postmodel;
import 'package:insta_clone/resources/storage_methods.dart';

class UploadPostMethod {
  final CollectionReference _firestore =
      FirebaseFirestore.instance.collection("Users");

  Future<String> upload({
    required String email,
    required Uint8List file,
    String? comments,
  }) async {
    String res = "some error occured";
    // log("inside method");

    try {
      if (email.isNotEmpty) {
        // log("before posting");

        String postUrl =
            await StorageMethods().uploadImageToStorage("post", file, false);

        log(postUrl);

        postmodel.Post post =
            postmodel.Post(postUrl: postUrl, comment: comments);

        // log(post.toString());

        await _firestore.doc(email).collection("Post").doc().set(post.toJson());
        res = "success";
      }
    } catch (err) {
      res = "$err";
    }
    return res;
  }
}
