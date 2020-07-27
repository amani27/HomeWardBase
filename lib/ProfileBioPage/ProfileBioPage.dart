import 'package:flutter/material.dart';

import '../main.dart';

class ProfileBioPage extends StatefulWidget {
  @override
  _ProfileBioPageState createState() => _ProfileBioPageState();
}

class _ProfileBioPageState extends State<ProfileBioPage> {
  List games = ["Swimming", "Gaming", "Football", "Piano", "Baseball"];
  List currentPeople = [
    {
      'pic': 'assets/image/cp1.png',
      'name': 'Lois Hughes',
      'desc': 'CPS',
      'status': 'Caseworker'
    },
    {
      'pic': 'assets/image/cp2.png',
      'name': 'Leon Campbell',
      'desc': 'Arrow Child & Family Ministries',
      'status': 'Caseworker'
    },
    {
      'pic': 'assets/image/cp3.png',
      'name': 'Jordan Jones',
      'desc': 'Arrow Child & Family Ministries',
      'status': 'Foster Parent'
    },
    {
      'pic': 'assets/image/cp4.png',
      'name': 'Demi Webb',
      'desc': 'Arrow Child & Family Ministries',
      'status': 'Foster Parent'
    },
  ];

  List pendingPeople = [
    {
      'pic': 'assets/image/cp1.png',
      'name': 'Philippa Jordan',
      'desc': 'CPS',
      'status': 'Foster Parent',
      'itemStatus': 'Pending Add',
    },
    {
      'pic': 'assets/image/cp2.png',
      'name': 'Adriana Bailey',
      'desc': 'Arrow Child & Family Ministries',
      'status': 'Caseworker',
      'itemStatus': 'Pending Removal',
    },
  ];

  List formerPeople = [
    {
      'pic': 'assets/image/cp1.png',
      'name': 'Adriana Bailey',
      'desc': 'SandalWood',
      'status': 'Foster Parent',
    },
  ];
  int menuSelected = 0;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8FA),
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 0, left: 0),
                          child: Icon(Icons.chevron_left,
                              color: Colors.black, size: 25)),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(right: 0),
                      child: PopupMenuButton<int>(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        icon: Icon(
                          Icons.more_horiz,
                          size: 25,
                          color: Colors.black,
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 2,
                            child: Text(
                              "Leave Case",
                              style: TextStyle(
                                  color: Color(0xFF5A5B5C),
                                  fontFamily: 'quicksand',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text(
                              "Close Case",
                              style: TextStyle(
                                  color: Color(0xFF5A5B5C),
                                  fontFamily: 'quicksand',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                        offset: Offset(0, 100),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Container(
              color: Color(0xFFFFFFFF),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            color: selectedColor,
                            image: DecorationImage(
                                image: AssetImage("assets/image/baby2.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(100)),
                        height: 63,
                        width: 63,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "Alannah Bradley",
                        style: TextStyle(
                            color: mainColor,
                            fontFamily: 'quicksand',
                            fontSize: 19,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Foster Placement -12 yo",
                        style: TextStyle(
                            color: Color(0xff7A98A9),
                            fontFamily: 'quicksand',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                menuSelected = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: menuSelected == 0
                                      ? mainColor
                                      : selectedColor,
                                  borderRadius: BorderRadius.circular(100)),
                              height: 39,
                              width: 39,
                              child: Image.asset("assets/image/menu.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                menuSelected = 1;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: menuSelected == 1
                                      ? mainColor
                                      : selectedColor,
                                  borderRadius: BorderRadius.circular(100)),
                              height: 39,
                              width: 39,
                              child: Image.asset("assets/image/user.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                menuSelected = 2;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: menuSelected == 2
                                      ? mainColor
                                      : selectedColor,
                                  borderRadius: BorderRadius.circular(100)),
                              height: 39,
                              width: 39,
                              child: Image.asset("assets/image/calendar.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                menuSelected = 3;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: menuSelected == 3
                                      ? mainColor
                                      : selectedColor,
                                  borderRadius: BorderRadius.circular(100)),
                              height: 39,
                              width: 39,
                              child: Image.asset("assets/image/chat.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                menuSelected = 4;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: menuSelected == 4
                                      ? mainColor
                                      : selectedColor,
                                  borderRadius: BorderRadius.circular(100)),
                              height: 39,
                              width: 39,
                              child: Image.asset("assets/image/time.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ];
        },
        body: menuSelected == 0
            ? DefaultTabController(
                length: 6,
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //height: 15,
                        margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                        child: Divider(
                          color: Colors.black,
                          height: 2,
                          thickness: 0.15,
                          //indent: 20,
                          endIndent: 0,
                        ),
                      ),
                      Container(
                        child: new Material(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: new TabBar(
                              isScrollable: true,
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: selectedColor,
                              ),
                              tabs: [
                                new Tab(
                                  text: "Biographical",
                                ),
                                new Tab(
                                  text: "Medical",
                                ),
                                new Tab(
                                  text: "Dental",
                                ),
                                new Tab(
                                  text: "Therapy",
                                ),
                                new Tab(
                                  text: "Education",
                                ),
                                new Tab(
                                  text: "Legal",
                                ),
                              ],
                              indicatorColor: selectedColor,
                              unselectedLabelColor: Color(0xff354D5B),
                              unselectedLabelStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                              indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                    width: 1.5, color: selectedColor),
                              ),
                              labelColor: selectedColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Container(
                              color: Color(0xFFF8F8FA),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20, right: 20, top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 0),
                                          child: Text(
                                            "Biographical",
                                            style: TextStyle(
                                                color: Color(0xff313131),
                                                fontFamily: 'quicksand',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 5,
                                                  right: 5),
                                              margin: EdgeInsets.only(top: 0),
                                              decoration: BoxDecoration(
                                                  color: selectedColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                      color: selectedColor)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(Icons.edit,
                                                      size: 11,
                                                      color: Colors.white),
                                                  Text(
                                                    " Edit",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.all(20),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.only(
                                          top: 15,
                                          bottom: 15,
                                        ),
                                        margin: EdgeInsets.only(top: 0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Text(
                                                "General",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: mainColor,
                                                    fontSize: 14,
                                                    fontFamily: "quicksand",
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Date of birth",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "02-12-2015",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Place of birth",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "New york",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Languages",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "English, Spanish",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Race",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "Asian",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Ethnicity",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "Hispanic",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "SSN",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "123-45-6789",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Activities & Interests",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff777D82),
                                                        fontSize: 14,
                                                        fontFamily: "quicksand",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              margin: EdgeInsets.only(
                                                  left: 15, top: 10, right: 15),
                                              child: Wrap(
                                                  children: List.generate(
                                                      games.length, (index) {
                                                return GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    margin: EdgeInsets.all(5),
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          top: 5,
                                                          bottom: 5,
                                                          left: 17,
                                                          right: 17),
                                                      margin: EdgeInsets.only(
                                                          top: 0),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xfff1f1f1))),
                                                      child: Text(
                                                        "${games[index]}",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff333333),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              })),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                        ]),
                      )
                    ],
                  ),
                ),
              )
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  color: Color(0xFFF8F8FA),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: Text(
                                "Current",
                                style: TextStyle(
                                    color: Color(0xff313131),
                                    fontFamily: 'quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            margin: EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                                children: List.generate(currentPeople.length,
                                    (index) {
                              return Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding:
                                          EdgeInsets.only(left: 15, right: 5),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(24),
                                            decoration: BoxDecoration(
                                                color: selectedColor,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "${currentPeople[index]['pic']}"),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100)),
                                            height: 45,
                                            width: 45,
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .only(
                                                                    right:
                                                                        20),
                                                            child: Text(
                                                              "${currentPeople[index]['name']}",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                  color:
                                                                      mainColor,
                                                                  fontSize:
                                                                      15,
                                                                  fontFamily:
                                                                      "quicksand",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 5,
                                                                  right: 30),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5,
                                                                  bottom: 5,
                                                                  left: 10,
                                                                  right: 10),
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                      0xffDCF7EE)
                                                                  .withOpacity(
                                                                      0.5),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                          child: Text(
                                                            "${currentPeople[index]['status']}",
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            style: TextStyle(
                                                                color:
                                                                    selectedColor,
                                                                fontSize: 9,
                                                                fontFamily:
                                                                    "quicksand",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "${currentPeople[index]['desc']}",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.center,
                                                    style: TextStyle(
                                                        color: mainColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            "quicksand",
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(0),
                                            margin: EdgeInsets.only(right: 0),
                                            child: PopupMenuButton<int>(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20.0))),
                                              icon: Icon(
                                                Icons.more_vert,
                                                color: Color(0xff707070)
                                                    .withOpacity(0.3),
                                              ),
                                              itemBuilder: (context) => [
                                                PopupMenuItem(
                                                  value: 1,
                                                  child: Text(
                                                    "Remove",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF5A5B5C),
                                                        fontFamily:
                                                            'quicksand',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                                // PopupMenuItem(
                                                //   value: 2,
                                                //   child: Text(
                                                //     "Close Case",
                                                //     style: TextStyle(
                                                //         color:
                                                //             Color(0xFF5A5B5C),
                                                //         fontFamily:
                                                //             'quicksand',
                                                //         fontSize: 12,
                                                //         fontWeight:
                                                //             FontWeight.w500),
                                                //   ),
                                                // ),
                                              ],
                                              offset: Offset(0, 100),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    currentPeople.length - 1 == index
                                        ? Container()
                                        : Container(
                                            //height: 15,
                                            margin: EdgeInsets.only(
                                                left: 0,
                                                right: 0,
                                                top: 15,
                                                bottom: 15),
                                            child: Divider(
                                              color: Colors.black,
                                              height: 2,
                                              thickness: 0.1,
                                              //indent: 20,
                                              endIndent: 0,
                                            ),
                                          ),
                                  ],
                                ),
                              );
                            }))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: Text(
                                "Pending",
                                style: TextStyle(
                                    color: Color(0xff313131),
                                    fontFamily: 'quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                  children: List.generate(pendingPeople.length,
                                      (index) {
                                return Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding:
                                            EdgeInsets.only(left: 15, right: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.all(24),
                                              decoration: BoxDecoration(
                                                  color: selectedColor,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "${pendingPeople[index]['pic']}"),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              height: 45,
                                              width: 45,
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          20),
                                                              child: Text(
                                                                "${pendingPeople[index]['name']}",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    color:
                                                                        mainColor,
                                                                    fontSize:
                                                                        15,
                                                                    fontFamily:
                                                                        "quicksand",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    right: 30),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    bottom: 5,
                                                                    left: 10,
                                                                    right: 10),
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                        0xffDCF7EE)
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Text(
                                                              "${pendingPeople[index]['status']}",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color:
                                                                      selectedColor,
                                                                  fontSize: 9,
                                                                  fontFamily:
                                                                      "quicksand",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "${pendingPeople[index]['desc']}",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: mainColor,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              "quicksand",
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    SizedBox(height: 5),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(0),
                                              margin: EdgeInsets.only(right: 0),
                                              child: PopupMenuButton<int>(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20.0))),
                                                icon: Icon(
                                                  Icons.more_vert,
                                                  color: Color(0xff707070)
                                                      .withOpacity(0.3),
                                                ),
                                                itemBuilder: (context) =>
                                                    pendingPeople[index][
                                                                'itemStatus'] ==
                                                            "Pending Add"
                                                        ? [
                                                            PopupMenuItem(
                                                              value: 1,
                                                              child: Text(
                                                                "Accept",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xFF5A5B5C),
                                                                    fontFamily:
                                                                        'quicksand',
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                            PopupMenuItem(
                                                              value: 2,
                                                              child: Text(
                                                                "Reject",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xFF5A5B5C),
                                                                    fontFamily:
                                                                        'quicksand',
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ]
                                                        : [
                                                            PopupMenuItem(
                                                              value: 1,
                                                              child: Text(
                                                                "Cancel Removal",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xFF5A5B5C),
                                                                    fontFamily:
                                                                        'quicksand',
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            )
                                                          ],
                                                offset: Offset(0, 100),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 70),
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 14,
                                            right: 14),
                                        decoration: BoxDecoration(
                                            color: mainColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text(
                                          "${pendingPeople[index]['itemStatus']}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontFamily: "quicksand",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      pendingPeople.length - 1 == index
                                          ? Container()
                                          : Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 5),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                    ],
                                  ),
                                );
                              }))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              child: Text(
                                "Former",
                                style: TextStyle(
                                    color: Color(0xff313131),
                                    fontFamily: 'quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                  children: List.generate(formerPeople.length,
                                      (index) {
                                return Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding:
                                            EdgeInsets.only(left: 15, right: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.all(24),
                                              decoration: BoxDecoration(
                                                  color: selectedColor,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "${formerPeople[index]['pic']}"),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              height: 45,
                                              width: 45,
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          20),
                                                              child: Text(
                                                                "${formerPeople[index]['name']}",
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    color:
                                                                        mainColor,
                                                                    fontSize:
                                                                        15,
                                                                    fontFamily:
                                                                        "quicksand",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    right: 30),
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    bottom: 5,
                                                                    left: 10,
                                                                    right: 10),
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                        0xffDCF7EE)
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Text(
                                                              "${formerPeople[index]['status']}",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color:
                                                                      selectedColor,
                                                                  fontSize: 9,
                                                                  fontFamily:
                                                                      "quicksand",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "${formerPeople[index]['desc']}",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: mainColor,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              "quicksand",
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    SizedBox(height: 5),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      formerPeople.length - 1 == index
                                          ? Container()
                                          : Container(
                                              //height: 15,
                                              margin: EdgeInsets.only(
                                                  left: 0,
                                                  right: 0,
                                                  top: 15,
                                                  bottom: 5),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 2,
                                                thickness: 0.1,
                                                //indent: 20,
                                                endIndent: 0,
                                              ),
                                            ),
                                    ],
                                  ),
                                );
                              }))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
