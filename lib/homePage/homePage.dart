import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sushi_delivery/customIcons/custom_icons_icons.dart';
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
        backgroundColor: CustomColors.appBarColor,
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
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: CustomColors.appBarColor,
              child: ListView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Sushi',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bitter',
                      ),
                    ),
                    color: CustomColors.buttonColorShoose,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Sushi',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bitter',
                      ),
                    ),
                    color: CustomColors.buttonColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Sushi',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bitter',
                      ),
                    ),
                    color: CustomColors.buttonColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Sushi',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bitter',
                      ),
                    ),
                    color: CustomColors.buttonColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
