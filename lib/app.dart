import 'package:flutter/material.dart';
import 'package:twitter_like_app/pages/home_tab_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.white,
          primaryTextTheme: TextTheme(
            title: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            subtitle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.blueGrey,
            ),
            body1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          primaryIconTheme: IconThemeData(
            color: Color.fromRGBO(39, 163, 241, 1.0),
          )

//        primaryColor: Color.fromRGBO(39, 163, 241, 1.0),
          ),
      home: HomeTabPage(),
    );
  }
}
