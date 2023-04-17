// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItem {
  final String text;
  final FaIcon icon;

  const MenuItem({required this.text, required this.icon});
}

class MenuItems {
  static const List<MenuItem> firstItems = [following, favorites];

  static const following =
      MenuItem(text: "Following", icon: FaIcon(FontAwesomeIcons.userGroup));
  static const favorites =
      MenuItem(text: "Favorites", icon: FaIcon(FontAwesomeIcons.star));

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Text(
          item.text,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 30,
        ),
        item.icon,
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.following:
        break;
      case MenuItems.favorites:
        break;
    }
  }
}
