import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_like_app/pages/timeline.dart';

class HomeTabPage extends StatefulWidget {
  HomeTabPage({Key key}) : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return Timeline();
      },
      tabBar: _buildTabBar(),
    );
  }

  CupertinoTabBar _buildTabBar() {
    return CupertinoTabBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
        ),
      ],
    );
  }
}
