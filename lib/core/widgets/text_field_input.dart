import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController txteditingController;
  final bool ispass;
  final String hintText;
  final TextInputType textInputType;

  TextFieldInput(
      {Key? key,
      required this.hintText,
      this.ispass = false,
      required this.textInputType,
      required this.txteditingController});

  @override
  Widget build(BuildContext context) {
    final inputborder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextFormField(
      controller: txteditingController,
      validator: (value) {},
      decoration: InputDecoration(
        border: inputborder,
        hintText: hintText,

        // style border when cursor is on that textfield
        focusedBorder: inputborder,

        // style border when cursor is not on that textfield
        enabledBorder: inputborder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: ispass,
    );
  }
}
