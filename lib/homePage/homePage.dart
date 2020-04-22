import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sushi_delivery/customIcons/socicons_icons.dart';
import 'package:sushi_delivery/customCorlors/customColor.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final _scaffordKey = GlobalKey<ScaffoldState>();

final barColor = const Color(0xFFAE1438);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffordKey,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: CustomColors.black,
        leading: IconButton(
          icon: Icon(Icons.add_box),
          onPressed: () {
            _scaffordKey.currentState.openDrawer();
          },
        ),
        title: Text('Home'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_alert), onPressed: () {})
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            child: IconButton(
                icon: Icon(
                  Socicons.spotify,
                  color: Colors.green,
                  size: 200,
                ),
                onPressed: null),
          ),
        ),
      ),
    );
  }
}
