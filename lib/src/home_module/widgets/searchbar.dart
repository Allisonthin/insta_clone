import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final inputborder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: inputborder,
          prefixIcon: const Icon(Icons.search),
          hintText: "Search",

          // style border when cursor is on that textfield
          focusedBorder: inputborder,

          // style border when cursor is not on that textfield
          enabledBorder: inputborder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
