import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:sushi_delivery/customCorlors/customColor.dart';
import 'package:sushi_delivery/homePage/detailSushi.dart';

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
                borderRadius: BorderRadius.circular(10),
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
      backgroundColor: CustomColors.appBarColor,
      key: _scaffordKey,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: CustomColors.appBarColor,
        leading: IconButton(
          icon: Icon(MdiIcons.menu),
          onPressed: () {
            _scaffordKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 10,
              width: 28,
              //color: Colors.green,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      MdiIcons.shopping,
                      size: 18,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 15,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.appBarColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.circleDouble,
              color: Colors.white,
              size: 25,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.heart,
              color: CustomColors.heartColor,
              size: 25,
            ),
            title: Text('Like'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: CustomColors.heartColor,
              size: 25,
            ),
            title: Text('Like'),
          ),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
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
                    width: 12,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
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
                    width: 12,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
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
                    width: 12,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
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
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'LATEST MEALS',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bitter'),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                Container(
                  height: 100,
                  color: CustomColors.appBarColor,
                  child: Card(
                    color: CustomColors.cardColor,
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(
                            builder: (BuildContext context) => DetailPage());
                        Navigator.of(context).push(materialPageRoute);
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.all(5),
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage('images/makisushi.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 8, bottom: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Sake Nigirl           ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: CustomColors.textColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Align(
                                      child: Icon(
                                        MdiIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Align(
                                      child: Icon(
                                        MdiIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Align(
                                      child: Icon(
                                        MdiIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Align(
                                      child: Icon(
                                        MdiIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Align(
                                      child: Icon(
                                        MdiIcons.star,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  r'$50',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: CustomColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 8, top: 8),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    MdiIcons.heart,
                                    color: CustomColors.heartColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Add To Cart',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: CustomColors.appBarColor,
                  child: Card(
                    color: CustomColors.cardColor,
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('images/makisushi.jpg'),
                                fit: BoxFit.fill,
                              ),
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Sake Nigirl           ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.textColor,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                r'$50',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 8, top: 8),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  MdiIcons.heart,
                                  color: CustomColors.heartColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Add To Cart',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: CustomColors.appBarColor,
                  child: Card(
                    color: CustomColors.cardColor,
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(5),
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('images/makisushi.jpg'),
                                fit: BoxFit.fill,
                              ),
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Sake Nigirl           ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.textColor,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Align(
                                    child: Icon(
                                      MdiIcons.star,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                r'$50',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: CustomColors.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 8, top: 8),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  MdiIcons.heart,
                                  color: CustomColors.heartColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Add To Cart',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
