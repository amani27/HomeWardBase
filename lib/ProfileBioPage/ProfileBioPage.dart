import 'package:flutter/material.dart';
import 'package:homewardbase/AddCasePage/AddCasePage.dart';
import 'package:homewardbase/AddMemberPage/AddMemberPage.dart';
import 'package:homewardbase/AddNewPage/AddNewPage.dart';
import 'package:homewardbase/EventDetailsPage/EventDetailsPage.dart';
import 'package:homewardbase/LogEntryPage/LogEntryPage.dart';
import 'package:homewardbase/LogFilterPage/LogFilterPage.dart';
import 'package:intl/intl.dart';

import '../main.dart';

class ProfileBioPage extends StatefulWidget {
  @override
  _ProfileBioPageState createState() => _ProfileBioPageState();
}

class _ProfileBioPageState extends State<ProfileBioPage> {
  TextEditingController searchChatController = new TextEditingController();
  TextEditingController searchLogController = new TextEditingController();
  var currentTime = DateTime.now();
  String user = "";
  List chatList = [
    {
      'pic': 'assets/image/c1.png',
      'person': 'Mahdi',
      'chat': 'Hello Linh!',
      'date': 'June 23',
      'time': '02:46',
      'ampm': 'am',
      'view': false,
    },
    {
      'pic': 'assets/image/c1.png',
      'person': 'Mahdi',
      'chat': 'Just talked to @Aref about it.',
      'date': 'June 23',
      'time': '02:46',
      'ampm': 'am',
      'view': false,
    },
    {
      'pic': 'assets/image/baby2.png',
      'person': 'Me',
      'chat': '👋 lan Payne',
      'date': 'June 23',
      'time': '02:47',
      'ampm': 'am',
      'view': false,
    },
    {
      'pic': 'assets/image/baby2.png',
      'person': 'Me',
      'chat': 'Thank you, I also love it.',
      'date': 'June 23',
      'time': '02:47',
      'ampm': 'am',
      'view': false,
    },
    {
      'pic': 'assets/image/baby2.png',
      'person': 'Me',
      'chat': 'Good morning ☀️',
      'date': 'June 23',
      'time': '02:47',
      'ampm': 'am',
      'view': false,
    },
    {
      'pic': 'assets/image/c2.png',
      'person': 'Aref',
      'chat': 'Hello Linh!',
      'date': 'June 23',
      'time': '02:48',
      'ampm': 'am',
      'view': false,
    },
    {
      'pic': 'assets/image/c2.png',
      'person': 'Aref',
      'chat': 'I really love your work, a great job 💪',
      'date': 'June 23',
      'time': '02:48',
      'ampm': 'am',
      'view': false,
    },
  ];

  List games = ["Swimming", "Gaming", "Football", "Piano", "Baseball"];

  List attachment = [
    "Siblingphoto.png",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
    "Casaguidelines.pdf",
  ];

  List logList = [
    {
      'pic': 'assets/image/calendar2.png',
      'log': 'An event \"CASA visit\" took place',
      'date': '10/27/20',
      'status': 'event',
      'desc': ''
    },
    {
      'pic': 'assets/image/redo.png',
      'log': 'You updated the School Name and School Address',
      'date': '10/27/20',
      'status': 'update',
      'desc': ''
    },
    {
      'pic': 'assets/image/money.png',
      'log': 'Robert Jones added to the log',
      'date': '10/27/20',
      'status': 'added',
      'desc':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tincidunt nulla nec rhoncus luctus. Morbi bibendum neque ut nunc accumsan, eget condimentum metus efficitur. Nullam eleifend volutpat est, a auctor nibh mollis sed. Integer sit amet purus ac diam mollis interdum ac ac metus. Etiam dictum mauris nec luctus pellentesque. '
    },
  ];

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
  String currentDate = "";
  String currentMonth = "";
  String currentYear = "";
  String currentWeekDay = "";
  String today = "";
  String searchChat = "";
  String searchLog = "";
  List monYearList = [];
  List dayList = [];
  List dayList1 = [];
  List allList = [];
  List finalList = [];
  List newList = [];
  List eventList = [
    {
      'id': '4',
      'month': 'July 2020',
      'day': '29',
      'year': '2020',
      'weekDay': 'Wed',
      'details': '',
      'stTime': '08:00 AM',
      'endTime': '11:00 AM',
      'pic': 'assets/image/pin.png',
    },
    {
      'id': '5',
      'month': 'July 2020',
      'day': '25',
      'year': '2020',
      'weekDay': 'Thu',
      'details': 'Doctor Appointment',
      'stTime': '01:30 PM',
      'endTime': '02:00 PM',
      'pic': 'assets/image/stethoscope.png',
    },
    {
      'id': '6',
      'month': 'July 2020',
      'day': '25',
      'year': '2020',
      'weekDay': 'Thu',
      'details': 'Doctor Appointment',
      'stTime': '08:00 AM',
      'endTime': '11:00 AM',
      'pic': 'assets/image/teeth.png',
    },
    {
      'id': '1',
      'month': 'June 2020',
      'day': '28',
      'year': '2020',
      'weekDay': 'Sun',
      'details': 'Casa home visit',
      'stTime': '08:00 AM',
      'endTime': '11:00 AM',
      'pic': 'assets/image/pin.png',
    },
    {
      'id': '2',
      'month': 'June 2020',
      'day': '28',
      'year': '2020',
      'weekDay': 'Sun',
      'details': 'Doctor Appointment',
      'stTime': '01:30 PM',
      'endTime': '02:00 PM',
      'pic': 'assets/image/stethoscope.png',
    },
    {
      'id': '3',
      'month': 'June 2020',
      'day': '28',
      'year': '2020',
      'weekDay': 'Sun',
      'details': 'Doctor Appointment',
      'stTime': '08:00 AM',
      'endTime': '11:00 AM',
      'pic': 'assets/image/teeth.png',
    },
    {
      'id': '7',
      'month': 'June 2020',
      'day': '25',
      'year': '2020',
      'weekDay': 'Thu',
      'details': 'Casa home visit',
      'stTime': '08:00 AM',
      'endTime': '11:00 AM',
      'pic': 'assets/image/pin.png',
    },
  ];

  List chatPerson = [];

  @override
  initState() {
    super.initState();

    setState(() {
      DateTime dateTimeNow = DateTime.now();

      currentDate = DateFormat.d().format(dateTimeNow);
      currentMonth = DateFormat.MMMM().format(dateTimeNow);
      currentYear = DateFormat.y().format(dateTimeNow);
      currentWeekDay = DateFormat.E().format(dateTimeNow);

      today = currentMonth + " " + currentYear;

      print(currentDate);
      print(currentMonth);
      print(currentYear);
      print(currentWeekDay);

      for (int i = 0; i < chatList.length; i++) {
        chatPerson.add(chatList[i]['person']);
      }
    });

    for (int i = 0; i < eventList.length; i++) {
      if (!monYearList.contains("${eventList[i]['month']}")) {
        monYearList.add("${eventList[i]['month']}");
      }
    }

    List day = [];

    for (int i = 0; i < monYearList.length; i++) {
      dayList = [];
      day = [];
      for (int j = 0; j < eventList.length; j++) {
        String monDate = "${eventList[j]['month']}";
        if (monYearList[i] == monDate) {
          if (!day.contains(eventList[j]['day'])) {
            day.add(eventList[j]['day']);
            dayList.add({
              'day': eventList[j]['day'],
              'weekDay': eventList[j]['weekDay'],
              'details': eventList[j]['details'],
            });
          }
        }
      }

      allList.add({'dayWeek': monYearList[i], 'list': dayList});
    }

    for (int x = 0; x < allList.length; x++) {
      for (int i = 0; i < allList[x]['list'].length; i++) {
        dayList1 = [];
        for (int j = 0; j < eventList.length; j++) {
          if (allList[x]['list'][i]['day'] == eventList[j]['day'] &&
              allList[x]['dayWeek'] == eventList[j]['month']) {
            dayList1.add(
              {
                'id': eventList[j]['id'],
                'month': eventList[j]['month'],
                'day': eventList[j]['day'],
                'year': eventList[j]['year'],
                'weekDay': eventList[j]['weekDay'],
                'details': eventList[j]['details'],
                'stTime': eventList[j]['stTime'],
                'endTime': eventList[j]['endTime'],
                'pic': eventList[j]['pic'],
              },
            );
          }
        }

        finalList.add({
          'dayWeek': allList[x]['dayWeek'],
          'day1': allList[x]['list'][i]['day'],
          'weekDay': allList[x]['list'][i]['weekDay'],
          'details': allList[x]['list'][i]['details'],
          'list1': dayList1
        });
      }
    }

    List checkingList = [];

    for (int i = 0; i < monYearList.length; i++) {
      checkingList = [];
      for (int j = 0; j < finalList.length; j++) {
        if (monYearList[i] == finalList[j]['dayWeek']) {
          checkingList.add({
            'dayWeek': finalList[j]['dayWeek'],
            'day1': finalList[j]['day1'],
            'weekDay': finalList[j]['weekDay'],
            'details': finalList[j]['details'],
            'list1': finalList[j]['list1']
          });
        }
      }
      newList.add({'monthDate': monYearList[i], 'info': checkingList});
    }

    // print("allList");
    // print(allList);

    // print("finalList");
    // print(finalList);

    print("newList");
    print(newList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8FA),
      floatingActionButton: menuSelected == 0 || menuSelected == 3
          ? Container()
          : FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => menuSelected == 1
                            ? AddMemberPage(2)
                            : menuSelected == 2
                                ? AddNewPage()
                                : LogEntryPage()));
              },
              child: Icon(
                Icons.add,
                size: 30,
              ),
              backgroundColor: selectedColor,
            ),
      body: Stack(
        children: <Widget>[
          NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
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
                                  child:
                                      Image.asset("assets/image/calendar.png"),
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
                                                    fontWeight:
                                                        FontWeight.w700),
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
                                                  margin:
                                                      EdgeInsets.only(top: 0),
                                                  decoration: BoxDecoration(
                                                      color: selectedColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                          color:
                                                              selectedColor)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Icon(Icons.edit,
                                                          size: 11,
                                                          color: Colors.white),
                                                      Text(
                                                        " Edit",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
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
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                                                  alignment:
                                                      Alignment.centerLeft,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "Date of birth",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "02-12-2015",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "Place of birth",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "New york",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "Languages",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "English, Spanish",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "Race",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Asian",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "Ethnicity",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "Hispanic",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "SSN",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Text(
                                                        "123-45-6789",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  padding: EdgeInsets.only(
                                                      left: 15, right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        "Activities & Interests",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff777D82),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "quicksand",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  margin: EdgeInsets.only(
                                                      left: 15,
                                                      top: 10,
                                                      right: 15),
                                                  child: Wrap(
                                                      children: List.generate(
                                                          games.length,
                                                          (index) {
                                                    return GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        margin:
                                                            EdgeInsets.all(5),
                                                        child: Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5,
                                                                  bottom: 5,
                                                                  left: 17,
                                                                  right: 17),
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 0),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border: Border.all(
                                                                  color: Color(
                                                                      0xfff1f1f1))),
                                                          child: Text(
                                                            "${games[index]}",
                                                            textAlign: TextAlign
                                                                .center,
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
                : menuSelected == 1
                    ? SingleChildScrollView(
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
                                        children: List.generate(
                                            currentPeople.length, (index) {
                                      return Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 5),
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
                                                            BorderRadius
                                                                .circular(100)),
                                                    height: 45,
                                                    width: 45,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets.only(
                                                                        right:
                                                                            20),
                                                                    child: Text(
                                                                      "${currentPeople[index]['name']}",
                                                                      maxLines:
                                                                          1,
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
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          right:
                                                                              30),
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              5,
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10),
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                              0xffDCF7EE)
                                                                          .withOpacity(
                                                                              0.5),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5)),
                                                                  child: Text(
                                                                    "${currentPeople[index]['status']}",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            selectedColor,
                                                                        fontSize:
                                                                            9,
                                                                        fontFamily:
                                                                            "quicksand",
                                                                        fontWeight:
                                                                            FontWeight.w400),
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
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color:
                                                                    mainColor,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    "quicksand",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(0),
                                                    margin: EdgeInsets.only(
                                                        right: 0),
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
                                                          [
                                                        PopupMenuItem(
                                                          value: 1,
                                                          child: Text(
                                                            "Remove",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFF5A5B5C),
                                                                fontFamily:
                                                                    'quicksand',
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
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
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        children: List.generate(
                                            pendingPeople.length, (index) {
                                      return Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 5),
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
                                                            BorderRadius
                                                                .circular(100)),
                                                    height: 45,
                                                    width: 45,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets.only(
                                                                        right:
                                                                            20),
                                                                    child: Text(
                                                                      "${pendingPeople[index]['name']}",
                                                                      maxLines:
                                                                          1,
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
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          right:
                                                                              30),
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              5,
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10),
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                              0xffDCF7EE)
                                                                          .withOpacity(
                                                                              0.5),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5)),
                                                                  child: Text(
                                                                    "${pendingPeople[index]['status']}",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            selectedColor,
                                                                        fontSize:
                                                                            9,
                                                                        fontFamily:
                                                                            "quicksand",
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            "${pendingPeople[index]['desc']}",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color:
                                                                    mainColor,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    "quicksand",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          SizedBox(height: 5),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(0),
                                                    margin: EdgeInsets.only(
                                                        right: 0),
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
                                                                              FontWeight.w500),
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
                                                                              FontWeight.w500),
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
                                                                              FontWeight.w500),
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
                                              margin: EdgeInsets.only(
                                                  top: 5, left: 70),
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
                                                    fontWeight:
                                                        FontWeight.w400),
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
                              Container(
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                              Container(
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 20, bottom: 90),
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
                                        children: List.generate(
                                            formerPeople.length, (index) {
                                      return Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 5),
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
                                                            BorderRadius
                                                                .circular(100)),
                                                    height: 45,
                                                    width: 45,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets.only(
                                                                        right:
                                                                            20),
                                                                    child: Text(
                                                                      "${formerPeople[index]['name']}",
                                                                      maxLines:
                                                                          1,
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
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          right:
                                                                              30),
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              5,
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10),
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                              0xffDCF7EE)
                                                                          .withOpacity(
                                                                              0.5),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5)),
                                                                  child: Text(
                                                                    "${formerPeople[index]['status']}",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color:
                                                                            selectedColor,
                                                                        fontSize:
                                                                            9,
                                                                        fontFamily:
                                                                            "quicksand",
                                                                        fontWeight:
                                                                            FontWeight.w400),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            "${formerPeople[index]['desc']}",
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                color:
                                                                    mainColor,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    "quicksand",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                            ],
                          ),
                        ),
                      )
                    : menuSelected == 2
                        ? Container(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children:
                                    List.generate(newList.length, (index) {
                                  return Container(
                                    margin: EdgeInsets.only(
                                        bottom: newList.length - 1 == index
                                            ? 70
                                            : 0),
                                    child: Column(
                                      children: <Widget>[
                                        newList[index]['monthDate'] == today
                                            ? Container(
                                                padding:
                                                    EdgeInsets.only(top: 20),
                                              )
                                            : Container(
                                                padding: EdgeInsets.only(
                                                    top: 20, bottom: 20),
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20),
                                                      child: Text(
                                                        newList[index]
                                                            ['monthDate'],
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff171725),
                                                            fontSize: 15,
                                                            fontFamily:
                                                                'quicksand',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        //height: 15,
                                                        margin: EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 5),
                                                        child: Divider(
                                                          color: Colors.black,
                                                          height: 2,
                                                          thickness: 0.15,
                                                          //indent: 20,
                                                          endIndent: 0,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                        Column(
                                            children: List.generate(
                                                newList[index]['info'].length,
                                                (ind1) {
                                          return Container(
                                            margin: EdgeInsets.only(bottom: 15),
                                            child: Row(
                                              crossAxisAlignment: newList[index]
                                                              ['info'][ind1]
                                                          ['details'] ==
                                                      ""
                                                  ? CrossAxisAlignment.center
                                                  : CrossAxisAlignment.start,
                                              children: <Widget>[
                                                newList[index]['monthDate'] ==
                                                            today &&
                                                        newList[index]['info']
                                                                    [ind1]
                                                                ['day1'] ==
                                                            currentDate &&
                                                        newList[index]['info']
                                                                    [ind1]
                                                                ['weekDay'] ==
                                                            currentWeekDay
                                                    ? Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20, top: 10),
                                                        child: Text(
                                                          "Today",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff272755),
                                                              fontSize: 10,
                                                              fontFamily:
                                                                  'quicksand',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      )
                                                    : Column(
                                                        children: <Widget>[
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20,
                                                                    top: 10),
                                                            child: Text(
                                                              newList[index][
                                                                          'info']
                                                                      [ind1]
                                                                  ['weekDay'],
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff272755),
                                                                  fontSize: 10,
                                                                  fontFamily:
                                                                      'quicksand',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20,
                                                                    top: 10),
                                                            child: Text(
                                                              newList[index]
                                                                      ['info'][
                                                                  ind1]['day1'],
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff272755),
                                                                  fontSize: 19,
                                                                  fontFamily:
                                                                      'quicksand',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        newList[index]['info']
                                                                [ind1]['list1']
                                                            .length, (ind2) {
                                                      return GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          EventDetailsPage()));
                                                        },
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              80,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15,
                                                                  top: 15,
                                                                  bottom: 15,
                                                                  right: 15),
                                                          margin: EdgeInsets.only(
                                                              left: newList[
                                                                                  index]
                                                                              [
                                                                              'monthDate'] ==
                                                                          today &&
                                                                      newList[index]['info'][ind1]
                                                                              [
                                                                              'day1'] ==
                                                                          currentDate &&
                                                                      newList[index]['info'][ind1]
                                                                              [
                                                                              'weekDay'] ==
                                                                          currentWeekDay
                                                                  ? 13.5
                                                                  : 20,
                                                              top: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Container(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      child:
                                                                          Text(
                                                                        newList[index]['info'][ind1]['list1'][ind2]['details'] ==
                                                                                ""
                                                                            ? "Nothing Scheduled today"
                                                                            : newList[index]['info'][ind1]['list1'][ind2]['details'],
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: TextStyle(
                                                                            color: Color(
                                                                                0xff003A5B),
                                                                            fontSize:
                                                                                14,
                                                                            fontFamily:
                                                                                'quicksand',
                                                                            fontWeight:
                                                                                FontWeight.w500),
                                                                      ),
                                                                    ),
                                                                    newList[index]['info'][ind1]['list1'][ind2]['details'] ==
                                                                            ""
                                                                        ? Container()
                                                                        : Container(
                                                                            margin:
                                                                                EdgeInsets.only(top: 5),
                                                                            child:
                                                                                Text(
                                                                              newList[index]['info'][ind1]['list1'][ind2]['stTime'] + " - " + newList[index]['info'][ind1]['list1'][ind2]['endTime'],
                                                                              textAlign: TextAlign.justify,
                                                                              style: TextStyle(color: Color(0xff354D5B), fontSize: 12, fontFamily: 'quicksand', fontWeight: FontWeight.w400),
                                                                            ),
                                                                          ),
                                                                  ],
                                                                ),
                                                              ),
                                                              newList[index]['info'][ind1]['list1']
                                                                              [
                                                                              ind2]
                                                                          [
                                                                          'details'] ==
                                                                      ""
                                                                  ? Container()
                                                                  : Container(
                                                                      height:
                                                                          40,
                                                                      width: 40,
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10),
                                                                      decoration: BoxDecoration(
                                                                          color: Color(0xffDCF7EE).withOpacity(
                                                                              0.5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(15)),
                                                                      child: Image
                                                                          .asset(
                                                                              "${newList[index]['info'][ind1]['list1'][ind2]['pic']}"),
                                                                    )
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }))
                                              ],
                                            ),
                                          );
                                        }))
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                          )
                        : menuSelected == 3
                            ? Container(
                                margin: EdgeInsets.only(bottom: 90),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      padding: EdgeInsets.only(
                                          top: 5, bottom: 5, right: 10),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            searchChat = value;
                                          });
                                        },
                                        controller: searchChatController,
                                        autofocus: false,
                                        style: TextStyle(
                                            color: Color(0xff354D5B),
                                            fontSize: 17,
                                            fontFamily: 'quicksand',
                                            fontWeight: FontWeight.w400),
                                        decoration: InputDecoration(
                                          prefixIcon: Container(
                                            padding: EdgeInsets.only(
                                                left: 10,
                                                top: 10,
                                                right: 10,
                                                bottom: 10),
                                            margin: EdgeInsets.only(left: 10),
                                            child: Image.asset(
                                              'assets/image/search1.png',
                                              height: 12,
                                              width: 12,
                                            ),
                                          ),

                                          hintText: "Search",
                                          hintStyle: TextStyle(
                                              color: Color(0xff354D5B),
                                              fontSize: 17,
                                              fontFamily: 'quicksand',
                                              fontWeight: FontWeight.w400),
                                          // labelStyle: TextStyle(
                                          //     color: Color(0xff7A98A9),
                                          //     fontSize: 15,
                                          //     fontFamily: 'quicksand',
                                          //     fontWeight: FontWeight.w500),
                                          // labelText: "Old Password",
                                          contentPadding: EdgeInsets.fromLTRB(
                                              12.0, 12, 12.0, 12),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ScrollConfiguration(
                                        behavior: new ScrollBehavior()
                                          ..buildViewportChrome(context, null,
                                              AxisDirection.down),
                                        child: Container(
                                          child: ListView.builder(
                                              itemCount: chatList.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                List<TextSpan> spanText = [];
                                                int samePerson = 0;
                                                if (user ==
                                                    chatList[index]['person']) {
                                                  samePerson = 1;
                                                }
                                                user =
                                                    chatList[index]['person'];

                                                String msg =
                                                    chatList[index]['chat'];
                                                List msgList = msg.split(" ");
                                                print("msgList ${index + 1}");
                                                print(msgList);

                                                for (int i = 0;
                                                    i < msgList.length;
                                                    i++) {
                                                  spanText.add(TextSpan(
                                                      text: '${msgList[i]} ',
                                                      style: TextStyle(
                                                          color: chatList[index][
                                                                      'person'] ==
                                                                  "Me"
                                                              ? Colors.white
                                                              : (msgList[i].startsWith("@") && chatPerson.contains(msgList[i].substring(1)))
                                                                  ? selectedColor
                                                                  : Color(
                                                                      0xff172B4D),
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'quicksand',
                                                          fontWeight: (msgList[i]
                                                                      .startsWith(
                                                                          "@") &&
                                                                  chatPerson.contains(
                                                                      msgList[i].substring(1)))
                                                              ? FontWeight.bold
                                                              : FontWeight.w600)));
                                                }

                                                return Column(
                                                  children: <Widget>[
                                                    chatList[index]['person'] ==
                                                            "Me"
                                                        ? Container()
                                                        : samePerson == 1
                                                            ? Container()
                                                            : Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              15),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      child: Image
                                                                          .asset(
                                                                        "${chatList[index]['pic']}",
                                                                        height:
                                                                            38,
                                                                        width:
                                                                            38,
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        "${chatList[index]['person']}",
                                                                        style: TextStyle(
                                                                            color: Color(
                                                                                0xff172B4D),
                                                                            fontSize:
                                                                                17,
                                                                            fontFamily:
                                                                                'quicksand',
                                                                            fontWeight:
                                                                                FontWeight.w600),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        "${chatList[index]['date']} at ${chatList[index]['time']} ${chatList[index]['ampm']}",
                                                                        style: TextStyle(
                                                                            color: Color(
                                                                                0xff000000),
                                                                            fontSize:
                                                                                13,
                                                                            fontFamily:
                                                                                'quicksand',
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                    Container(
                                                      child: Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Container(
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: chatList[index]
                                                                              [
                                                                              'person'] ==
                                                                          "Me"
                                                                      ? 120
                                                                      : 50,
                                                                  right: chatList[index]
                                                                              [
                                                                              'person'] ==
                                                                          "Me"
                                                                      ? 0
                                                                      : 120,
                                                                ),
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment: chatList[index]['person'] == "Me"
                                                                              ? CrossAxisAlignment.end
                                                                              : CrossAxisAlignment.start,
                                                                          children: <
                                                                              Widget>[
                                                                            ////// <<<<< Message >>>>> //////
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  if (chatList[index]['view'] == true) {
                                                                                    chatList[index]['view'] = false;
                                                                                  } else {
                                                                                    chatList[index]['view'] = true;
                                                                                  }
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
                                                                                margin: EdgeInsets.only(top: 1, left: 20, right: 20),
                                                                                decoration: new BoxDecoration(
                                                                                  color: chatList[index]['person'] == "Me" ? selectedColor : Colors.white,
                                                                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                                                                ),
                                                                                // child: Text(
                                                                                //   "${chatList[index]['chat']}",
                                                                                //   style: TextStyle(color: chatList[index]['person'] == "Me" ? Colors.white : Color(0xff172B4D), fontSize: 13, fontFamily: 'quicksand', fontWeight: FontWeight.w600),
                                                                                // ),
                                                                                child: RichText(text: TextSpan(children: spanText)),
                                                                              ),
                                                                            ),
                                                                            chatList[index]['view'] == true
                                                                                ? Container(
                                                                                    margin: EdgeInsets.only(left: chatList[index]['person'] == "Me" ? 0 : 20, right: chatList[index]['person'] == "Me" ? 20 : 0, top: 3, bottom: 10),
                                                                                    child: Text(
                                                                                      "${chatList[index]['time']} am",
                                                                                      style: TextStyle(color: Color(0xff172B4D), fontSize: 13, fontFamily: 'quicksand', fontWeight: FontWeight.w400),
                                                                                    ),
                                                                                  )
                                                                                : Container(),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              }),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        padding: EdgeInsets.only(
                                            top: 5, bottom: 5, right: 10),
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              searchLog = value;
                                            });
                                          },
                                          controller: searchLogController,
                                          autofocus: false,
                                          style: TextStyle(
                                              color: Color(0xff354D5B),
                                              fontSize: 17,
                                              fontFamily: 'quicksand',
                                              fontWeight: FontWeight.w400),
                                          decoration: InputDecoration(
                                            prefixIcon: Container(
                                              padding: EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              margin: EdgeInsets.only(left: 10),
                                              child: Image.asset(
                                                'assets/image/search1.png',
                                                height: 12,
                                                width: 12,
                                              ),
                                            ),
                                            suffixIcon: Wrap(
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                LogFilterPage()));
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: 10,
                                                        top: 10,
                                                        right: 10,
                                                        bottom: 10),
                                                    margin: EdgeInsets.only(
                                                        left: 10, top: 5),
                                                    child: Image.asset(
                                                      'assets/image/filter1.png',
                                                      height: 16,
                                                      width: 16,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5,
                                                        top: 10,
                                                        right: 10,
                                                        bottom: 10),
                                                    child: Icon(
                                                      Icons.done_all,
                                                      color: Color(0xff354D5B),
                                                    )),
                                              ],
                                            ),
                                            hintText: "Search",
                                            hintStyle: TextStyle(
                                                color: Color(0xff354D5B),
                                                fontSize: 17,
                                                fontFamily: 'quicksand',
                                                fontWeight: FontWeight.w400),
                                            // labelStyle: TextStyle(
                                            //     color: Color(0xff7A98A9),
                                            //     fontSize: 15,
                                            //     fontFamily: 'quicksand',
                                            //     fontWeight: FontWeight.w500),
                                            // labelText: "Old Password",
                                            contentPadding: EdgeInsets.fromLTRB(
                                                12.0, 12, 12.0, 12),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      Column(
                                          children: List.generate(
                                              logList.length, (index) {
                                        return Container(
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              top: 10,
                                              right: 10,
                                              bottom: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          margin: EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 5,
                                              bottom: 5),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    right: 10,
                                                    bottom: 10),
                                                margin: EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                decoration: BoxDecoration(
                                                    color: selectedColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: Image.asset(
                                                  '${logList[index]['pic']}',
                                                  height: 14,
                                                  width: 14,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: logList[index]
                                                                        [
                                                                        'status'] ==
                                                                    "added"
                                                                ? 150
                                                                : 100),
                                                        child: Text(
                                                          "${logList[index]['log']}",
                                                          style: TextStyle(
                                                              color: mainColor,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  "quicksand",
                                                              fontWeight: logList[
                                                                              index]
                                                                          [
                                                                          'status'] ==
                                                                      "event"
                                                                  ? FontWeight
                                                                      .w700
                                                                  : FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: <Widget>[
                                                            Text(
                                                              "${logList[index]['date']}",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff003A5B),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      "quicksand",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                            logList[index][
                                                                        'status'] ==
                                                                    "added"
                                                                ? Container(
                                                                    child: Row(
                                                                      children: <
                                                                          Widget>[
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.withOpacity(0.25),
                                                                              borderRadius: BorderRadius.circular(100)),
                                                                          padding: EdgeInsets.only(
                                                                              left: 5,
                                                                              top: 5,
                                                                              right: 5,
                                                                              bottom: 5),
                                                                          margin: EdgeInsets.only(
                                                                              left: 10,
                                                                              top: 0,
                                                                              right: 5),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/image/feather1.png',
                                                                            height:
                                                                                8,
                                                                            width:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.withOpacity(0.25),
                                                                              borderRadius: BorderRadius.circular(100)),
                                                                          padding: EdgeInsets.only(
                                                                              left: 5,
                                                                              top: 5,
                                                                              right: 5,
                                                                              bottom: 5),
                                                                          margin: EdgeInsets.only(
                                                                              left: 0,
                                                                              top: 0,
                                                                              right: 5),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/image/lesson1.png',
                                                                            height:
                                                                                8,
                                                                            width:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.withOpacity(0.25),
                                                                              borderRadius: BorderRadius.circular(100)),
                                                                          padding: EdgeInsets.only(
                                                                              left: 5,
                                                                              top: 5,
                                                                              right: 5,
                                                                              bottom: 5),
                                                                          margin: EdgeInsets.only(
                                                                              left: 0,
                                                                              top: 0,
                                                                              right: 5),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/image/growth1.png',
                                                                            height:
                                                                                8,
                                                                            width:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.withOpacity(0.25),
                                                                              borderRadius: BorderRadius.circular(100)),
                                                                          padding: EdgeInsets.only(
                                                                              left: 5,
                                                                              top: 5,
                                                                              right: 5,
                                                                              bottom: 5),
                                                                          margin: EdgeInsets.only(
                                                                              left: 0,
                                                                              top: 0,
                                                                              right: 5),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/image/legal.png',
                                                                            height:
                                                                                8,
                                                                            width:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.withOpacity(0.25),
                                                                              borderRadius: BorderRadius.circular(100)),
                                                                          padding: EdgeInsets.only(
                                                                              left: 5,
                                                                              top: 5,
                                                                              right: 5,
                                                                              bottom: 5),
                                                                          margin: EdgeInsets.only(
                                                                              left: 0,
                                                                              top: 0,
                                                                              right: 5),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/image/teeth1.png',
                                                                            height:
                                                                                8,
                                                                            width:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.grey.withOpacity(0.25),
                                                                              borderRadius: BorderRadius.circular(100)),
                                                                          padding: EdgeInsets.only(
                                                                              left: 5,
                                                                              top: 5,
                                                                              right: 5,
                                                                              bottom: 5),
                                                                          margin: EdgeInsets.only(
                                                                              left: 0,
                                                                              top: 0,
                                                                              right: 10),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/image/stetho.png',
                                                                            height:
                                                                                8,
                                                                            width:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                : Container(),
                                                          ],
                                                        ),
                                                      ),
                                                      logList[index]
                                                                  ['status'] ==
                                                              "added"
                                                          ? Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 15,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                "${logList[index]['desc']}",
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff003A5B),
                                                                    fontSize:
                                                                        12,
                                                                    fontFamily:
                                                                        "quicksand",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            )
                                                          : Container(),
                                                      logList[index]
                                                                  ['status'] ==
                                                              "added"
                                                          ? Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          40,
                                                                      top: 15),
                                                              child:
                                                                  SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                physics:
                                                                    BouncingScrollPhysics(),
                                                                child: Wrap(
                                                                  children: List.generate(
                                                                      attachment
                                                                          .length,
                                                                      (index) {
                                                                    return Container(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              0,
                                                                          right:
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: <
                                                                            Widget>[
                                                                          Container(
                                                                            height:
                                                                                95,
                                                                            width:
                                                                                105,
                                                                            decoration:
                                                                                BoxDecoration(color: Color(0xffECF0F3), borderRadius: BorderRadius.circular(5)),
                                                                          ),
                                                                          SizedBox(
                                                                              height: 5),
                                                                          Container(
                                                                            child:
                                                                                Text(
                                                                              attachment[index],
                                                                              style: TextStyle(color: Color(0xff354D5B), fontFamily: "quicksand", fontSize: 9, fontWeight: FontWeight.w400),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  }),
                                                                ),
                                                              ),
                                                            )
                                                          : Container()
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }))
                                    ],
                                  ),
                                ),
                              ),
          ),
          menuSelected == 3
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    Container(
                      height: 90,
                      color: Colors.white,
                      alignment: Alignment.bottomCenter,
                      child: Wrap(
                        children: <Widget>[
                          Container(
                            //height: 15,
                            margin: EdgeInsets.only(left: 0, right: 0, top: 0),
                            child: Divider(
                              color: Colors.black,
                              height: 2,
                              thickness: 0.1,
                              //indent: 20,
                              endIndent: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(20),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.only(top: 0, bottom: 0),
                                margin: EdgeInsets.only(top: 0),
                                decoration: BoxDecoration(
                                    color: Color(0xFFF8F8FA),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFFF8F8FA),
                                    )),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      searchLog = value;
                                    });
                                  },
                                  controller: searchLogController,
                                  autofocus: false,
                                  style: TextStyle(
                                      color: Color(0xffC1C7D0),
                                      fontSize: 14,
                                      fontFamily: 'quicksand',
                                      fontWeight: FontWeight.w700),
                                  decoration: InputDecoration(
                                    prefixIcon: Wrap(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LogFilterPage()));
                                          },
                                          child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 10,
                                                  top: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 5),
                                              child: Icon(Icons.mood,
                                                  color: Color(0xffC1C7D0),
                                                  size: 20)),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 5,
                                              top: 5,
                                              right: 5,
                                              bottom: 5),
                                          margin: EdgeInsets.only(
                                              top: 12, right: 10),
                                          child: Image.asset(
                                            'assets/image/attach.png',
                                            height: 17,
                                            width: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                    suffixIcon: Container(
                                      padding: EdgeInsets.only(
                                          left: 5, top: 5, right: 5, bottom: 5),
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Image.asset(
                                        'assets/image/send.png',
                                        height: 15,
                                        width: 22,
                                      ),
                                    ),
                                    hintText: "Start typing...",
                                    hintStyle: TextStyle(
                                        color: Color(0xffC1C7D0),
                                        fontSize: 14,
                                        fontFamily: 'quicksand',
                                        fontWeight: FontWeight.w700),
                                    // labelStyle: TextStyle(
                                    //     color: Color(0xff7A98A9),
                                    //     fontSize: 15,
                                    //     fontFamily: 'quicksand',
                                    //     fontWeight: FontWeight.w500),
                                    // labelText: "Old Password",
                                    contentPadding:
                                        EdgeInsets.fromLTRB(0.0, 15, 10.0, 0),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
