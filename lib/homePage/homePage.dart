import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            child: IconButton(
                icon: Icon(
                  MdiIcons.facebook,
                  color: Colors.blue,size: 200,
                ),
                onPressed: null),
          ),
        ),
      ),
    );
  }
}
