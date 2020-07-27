import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homewardbase/WelcomePage/WelcomePage.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Stack(
        children: <Widget>[
          Container(
              //margin: EdgeInsets.only(left:55, right:55),
              child: Center(
                  child: Image.asset(
            "assets/image/logo1.png",
            height: 100,
          ))),
        ],
      ),
    );
  }
}
