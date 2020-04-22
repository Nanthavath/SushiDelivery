import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:sushi_delivery/customCorlors/customColor.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final _scaffordKey = GlobalKey<ScaffoldState>();

final barColor = const Color(0xFFAE1438);

class _MyHomePageState extends State<MyHomePage> {
  Widget productfirt() {
    return Container(
      height: 130,
      width: 120,
      child: Card(
        color: CustomColors.cardColor,
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('images/makisushi.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sushi Dai Tsujili',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bitter',
                fontSize: 14,
              ),
            ),
            Text(
              r'$25',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Bitter',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productSecond() {
    return Container(
      height: 130,
      width: 120,
      child: Card(
        color: CustomColors.cardColor,
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('images/sushi2.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sushi Dai Tsujili',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bitter',
                fontSize: 14,
              ),
            ),
            Text(
              r'$25',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Bitter',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productThird() {
    return Container(
      height: 130,
      width: 120,
      child: Card(
        color: CustomColors.cardColor,
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('images/sushi3.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sushi Dai Tsujili',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bitter',
                fontSize: 14,
              ),
            ),
            Text(
              r'$25',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Bitter',
              ),
            ),
          ],
        ),
      ),
    );
  }

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
              height: 60,
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
            ),
            Container(
              height: 200,
              color: CustomColors.appBarColor,
              child: ListView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  productfirt(),
                  SizedBox(
                    width: 10,
                  ),
                  productSecond(),
                  SizedBox(
                    width: 10,
                  ),
                  productThird(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
