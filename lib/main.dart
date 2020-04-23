import 'package:flutter/material.dart';
import 'package:sushi_delivery/homePage/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 //final barColor = const Color(0xFFAE1438);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(primarySwatch: barColor),
      home: MyHomePage(),
    );
  }
}
