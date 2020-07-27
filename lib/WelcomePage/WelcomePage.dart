import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homewardbase/LoginPage/LoginPage.dart';

import '../main.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List imgList = [
    "assets/image/sp1.png",
    "assets/image/sp2.png",
    "assets/image/sp3.png",
  ];

  List titleList = [
    "Stay in the loop",
    "See what's coming",
    "Work as a team",
  ];

  List txtList = [
    "Maintain and share an accurate and up-to-date-information recorded on the child in care.",
    "Schedule and keep track of all future appointments and other events in the child's life.",
    "Communicate and collaborate easily with everyone involved in the child's case.",
  ];

  List btnText = [
    "Next",
    "Next",
    "Get started",
  ];

  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Center(
                        child: Image.asset(
                      "assets/image/logo2.png",
                      height: 100,
                      width: 250,
                    ))),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 130,
                          height: 130,
                          //margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("${imgList[_current]}"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 50, bottom: 0),
                        child: Text(
                          "${titleList[_current]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff003A5B),
                              fontFamily: "quicksand",
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 40, right: 40, top: 30, bottom: 50),
                        child: Text(
                          "${txtList[_current]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff003A5B),
                              fontFamily: "quicksand",
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(imgList, (index, url) {
                            return Container(
                              width: _current == index ? 15.0 : 6.0,
                              height: _current == index ? 6.0 : 6.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: _current == index
                                    ? selectedColor
                                    : backColor,
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_current == 0) {
                        _current = 1;
                      } else if (_current == 1) {
                        _current = 2;
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 170,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: selectedColor,
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        "${btnText[_current]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "quicksand",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
