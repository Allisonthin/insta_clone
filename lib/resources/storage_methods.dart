import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // adding image to firestorage clouds
  Future<String> uploadImageToStorage(
      String childName, Uint8List file, bool ispost) async {
    // childname = "create a image folder where we want to store in firestorage",
    // file ="image  which we want to upload",
    // .child() = "image path, here image path is same as users id"
    Reference ref = _storage.ref(childName).child(_auth.currentUser!.uid);

    // uploadTask ="Creates a task that performs an HTTP request for the specified URL request object and uploads the provided data"
    UploadTask uploadTask = ref.putData(file);

    print("uploadtask is $uploadTask");

    TaskSnapshot snap = await uploadTask;
    print("snap is $snap");

    String downloadUrl = await snap.ref.getDownloadURL();

    return downloadUrl;
  }
}
