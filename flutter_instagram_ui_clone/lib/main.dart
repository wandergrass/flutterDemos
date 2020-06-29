import 'package:flutter/material.dart';
import 'package:flutterinstagramuiclone/insta_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.black,fontFamily: "Aveny"),
        ),
        textTheme: TextTheme(title: TextStyle(color: Colors.red)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstaHome(),
    );
  }
}