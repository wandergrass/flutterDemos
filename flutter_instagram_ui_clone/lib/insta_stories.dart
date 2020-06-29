import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget{
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = Expanded(//这个控件会把同级别的控件，在父控件中填充满整个父控件。
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,index) => Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg"),
                )
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            index == 0
                ? Positioned(
              right: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 14,
                ),
              ),
            )
                : Container()
          ],
        ),

      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}