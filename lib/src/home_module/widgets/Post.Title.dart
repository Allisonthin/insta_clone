// ignore_for_file: deprecated_member_use

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/core/Color.dart';
import 'package:insta_clone/src/home_module/logic/dropDownMenuList.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: Row(
          children: [
            SvgPicture.asset(
              "assets/ic_instagram.svg",
              color: primaryColor,
              height: 30,
            ),
            const Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),

        // openWithLongPress: true,
        items: [
          ...MenuItems.firstItems.map((item) =>
              DropdownMenuItem(value: item, child: MenuItems.buildItem(item)))
        ],
        onChanged: (value) {
          MenuItems.onChanged(context, value as MenuItem);
        },
        dropdownStyleData: DropdownStyleData(
          width: 150,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: mobileSearchColor,
          ),
          elevation: 8,
          offset: const Offset(40, -4),
        ),
      ),
    );
  }
}
