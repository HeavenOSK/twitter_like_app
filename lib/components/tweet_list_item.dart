import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _displayName = 'へぶん🦌';
const _accountName = '@heavenOSK';
const _tweetContent = '''最近始まったプロジェクトが面白すぎて、気付いたら実現方法考えてロードマップ引いてプレゼンしてた。笑
今日だけでいくつも面白いことがあって、いくつか失敗もした。
沢山学習して、チームが最大限パフォーマンスが出せるように裏方をやっていきたい。''';

class TweetListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.3),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildUserImage(context),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildHeading(context),
                          Text(_tweetContent,
                              style: Theme.of(context).primaryTextTheme.body1),
                        ],
                      ),
                    ),
                    SizedBox(width: 8)
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildIconButton(FontAwesomeIcons.comment),
                    _buildIconButton(FontAwesomeIcons.retweet),
                    _buildIconButton(FontAwesomeIcons.heart),
                    _buildIconButton(Icons.file_upload),
                    SizedBox(width: 4)
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeading(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(_displayName, style: Theme.of(context).primaryTextTheme.title),
        Text(' ' + _accountName,
            style: Theme.of(context).primaryTextTheme.subtitle),
        Text('･6分', style: Theme.of(context).primaryTextTheme.subtitle),
      ],
    );
  }

  Widget _buildUserImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, right: 6.0),
      child: Icon(
        Icons.account_circle,
        size: 80,
        color: Theme.of(context).primaryIconTheme.color,
      ),
    );
  }

  Widget _buildIconButton(IconData iconData, {VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        iconData,
        size: 18,
        color: Colors.blueGrey,
      ),
    );
  }
}
