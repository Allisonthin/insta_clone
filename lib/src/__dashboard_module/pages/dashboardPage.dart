// ignore_for_file: file_names

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/routes/Route_import.gr.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    log("DashboARD");
    return AutoTabsScaffold(
      routes: const [
        HomeScreenRoute(),
        ReelSearchRoute(),
        UploadReelRoute(),
        WatchReelRoute(),
        UserProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            // selectedIconTheme: IconThemeData(weight: 200),
            // backgroundColor: Colors.amber,
            // fixedColor: Colors.cyan,
            selectedItemColor: Colors.white,
            currentIndex: tabsRouter.activeIndex,
            selectedFontSize: 12,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.white,
                    size: 20,
                  ),
                  label: "")
            ]);
      },
    );
  }
}
