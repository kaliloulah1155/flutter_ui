import 'package:flutter/material.dart';
import 'package:flutter_ui/projet2/UiDismissible.dart'; //projet2
import 'package:flutter_ui/projet3/UiFadeImage.dart'; //projet3

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:UiFadeImage(),
    );
  }
}

