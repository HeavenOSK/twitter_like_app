import 'package:flutter/material.dart';
import 'package:twitter_like_app/components/tweet_list_item.dart';

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(
            Icons.account_circle,
            size: 40,
          ),
        ),
        title: Text('ホーム'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.bubble_chart,
              size: 36,
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TweetListItem();
          },
        ),
      ),
    );
  }
}
