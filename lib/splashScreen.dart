import 'dart:async';
import 'dart:ui';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:sushi_delivery/customCorlors/customColor.dart';
import 'package:sushi_delivery/homePage/homePage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _mockCheckforSecsion().then((status) {
      if (status) {
        navigationHome();
      }
    });
  }

  Future<bool> _mockCheckforSecsion() async {
    await Future.delayed(Duration(seconds: 3), () {});
    return true;
  }

  void navigationHome() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => MyHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/splash.jpg',
              fit: BoxFit.fill,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 60,
                left: 15,
              ),
              child: Text(
                'Get Your\n Sushi Today',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
