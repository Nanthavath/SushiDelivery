import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sushi_delivery/customCorlors/customColor.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  int couter=0;
  void counters(){
    setState(() {
      couter++;
    });
  }

  void deleteCounter(){
    setState(() {
      couter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.appBarColor,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).copyWith().size.height / 1.8,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/sushi3.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28, left: 10),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 12, top: 10),
                        height: 30,
                        width: 30,
                        //color: Colors.green,
                        child: Stack(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                MdiIcons.shopping,
                                size: 18,
                                color: Colors.white,
                              ),
                              onPressed: null,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    '3',
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
                      )),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            width: MediaQuery.of(context).copyWith().size.width,
            // color: Colors.red,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'SAKE NIGIRL SOUP',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Bitter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    r'$50',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Bitter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 12,
              right: 18,
            ),
            //height: 40,
            //color: Colors.red,
            width: MediaQuery.of(context).copyWith().size.width,
            child: Align(
              child: Text(
                'This article is about Japanese cuisine. For the ancient Chinese poetThis article is about Japanese cuisine. For the ancient Chinese poet This article is about Japanese cuisine. For the ancient Chinese poet',
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 18,
              left: 25,
              right: 25,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: CustomColors.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      deleteCounter();;
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'x$couter',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  RaisedButton(
                    color: CustomColors.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      counters();
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 45,
            //color: Colors.red,
            margin: EdgeInsets.only(
              top: 10,
              left: 40,
              right: 40,
            ),
            width: MediaQuery.of(context).copyWith().size.width,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: CustomColors.buttonColorShoose,
              child: Text(
                'CHECKOUT',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
