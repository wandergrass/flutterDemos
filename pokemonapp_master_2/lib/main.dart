import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemonappmaster2/homepage.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Poke Mon",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.cyan,
        ),
        home: HomePage(),
      )
  );
}