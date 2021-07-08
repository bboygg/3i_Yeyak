import 'package:mobile/screens/login_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

final descTextStyle = TextStyle(
  //텍스트 스타일, 폰트 크기 14 이상 늘리지 말것
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 14,
  height: 2,
);

class _ListPageState extends State<ListPage> {
  @override
  void initState() {
    super.initState();
  }

  //   String! code;
  //   String ! manufacturer;
  //   String model;
  //   String color;
  //   OS os;
  //   boolean availability;
  //   String description;
  String dateTimeForm = 'yyyy-MM-dd HH:mm';
  String deviceName = "deviceName"; //
  String id = "userName"; //
  DateTime? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("0057FF"),
          leading: BackButton(
            //implement backbutton in
            color: Colors.white,
          ),
          title: Text(LoginPage.uName),
          centerTitle: true,
        ),
        body: Container(
          child: DefaultTextStyle.merge(
              //Device and Date contatiner
              style: descTextStyle,
              child: Container(
                padding: EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.phone_android, color: Colors.green[500]),
                        Text('Device:'),
                        Text(deviceName), //add device name
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.green[500]),
                        Text('Date:'),
                        Text(dateTimeForm), //add date time form
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.person, color: Colors.green[500]),
                        Text('ID:'),
                        Text(id), //add user name
                      ],
                    ),
                  ],
                ),
              )),
          // ListView(
          // padding: const EdgeInsets.all(8),
          // children: <Widget>[
          //   ListTile(
          // )])
        ));
  }
}
