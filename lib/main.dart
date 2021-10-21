import 'package:flutter/material.dart';
import 'package:flutter_ui/projet5/AnimatedSwitcherp.dart'; //projet5
//import 'package:flutter_ui/projet2/UiDismissible.dart'; //projet2
//import 'package:flutter_ui/projet3/UiFadeImage.dart'; //projet 3
//import 'package:flutter_ui/projet4/UiBackDropFilter.dart'; //projet4
//import 'package:flutter_ui/projet4/UiDropDownList.dart';

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
      home:AnimatedSwitcherp(),
    );
  }
}

