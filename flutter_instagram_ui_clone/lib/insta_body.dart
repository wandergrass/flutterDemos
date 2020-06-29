import 'package:flutter/material.dart';
import 'package:flutterinstagramuiclone/insta_list.dart';
import 'package:flutterinstagramuiclone/insta_stories.dart';

class InstaBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: InstaList()),
      ],
    );
  }
}
