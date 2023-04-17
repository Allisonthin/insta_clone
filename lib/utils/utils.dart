import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImagee(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();

  XFile? file = await imagePicker.pickImage(source: source);

  // check whether the user exit by selecting image or not
  if (file != null) {
    return await file.readAsBytes();
  }
  // print("no image is selected");
}

showShackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
