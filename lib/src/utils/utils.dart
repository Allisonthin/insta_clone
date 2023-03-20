import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImagee(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _file = await _imagePicker.pickImage(source: source);

  // check whether the user exit by selecting image or not
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print("no image is selected");
}
