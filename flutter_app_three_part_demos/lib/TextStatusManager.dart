
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextUseDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "TextUseDemo",
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
        backgroundColor: Colors.white,
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Text("Hello world", textAlign: TextAlign.left,),
              Text("Hello world! I'm Jack. "*4, maxLines: 1, overflow: TextOverflow.ellipsis,),
              Text("Hello world", textScaleFactor: 1.5,),
              Text("Hello world "*6,  //字符串重复六次
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}