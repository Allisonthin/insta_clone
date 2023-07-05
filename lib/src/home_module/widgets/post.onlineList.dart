import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class OnlineList extends StatefulWidget {
  const OnlineList({super.key});

  @override
  State<OnlineList> createState() => _OnlineListState();
}

class _OnlineListState extends State<OnlineList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
      GlobalKey<LiquidPullToRefreshState>();

  static int refreshNum = 10;

  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 3), () {
      completer.complete();
    });
    setState(() {
      refreshNum = Random().nextInt(100);
    });
    return completer.future.then<void>((_) {
      ScaffoldMessenger.of(_scaffoldKey.currentState!.context).showSnackBar(
        SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
            label: 'RETRY',
            onPressed: () {
              _refreshIndicatorKey.currentState!.show();
            },
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LiquidPullToRefresh(
        key: _refreshIndicatorKey, // key if you want to add
        onRefresh: _handleRefresh, // refresh callback
        child: Row(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.amber,
            )
          ],
        ), // scroll view
      ),
    );
  }
}
