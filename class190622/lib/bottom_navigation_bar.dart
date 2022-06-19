import 'package:class190622/screen1.dart';
import 'package:class190622/screen2.dart';
import 'package:class190622/screen3.dart';
import 'package:class190622/screen4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavigationBarPractice extends StatefulWidget {
  const BottomNavigationBarPractice({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPractice> createState() =>
      _BottomNavigationBarPracticeState();
}

class _BottomNavigationBarPracticeState
    extends State<BottomNavigationBarPractice> {
  Widget currentScreen = Screen1();
  var currentTab = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentScreen,
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = Screen1();
                  currentTab = 1;
                });
              },
              icon: Icon(Icons.home),
              color: currentTab == 3 ? Colors.white : Colors.black,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = Screen2();
                  currentTab = 2;
                });
              },
              icon: Icon(Icons.notification_add),
              color: currentTab == 3 ? Colors.white : Colors.black,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = Screen3();
                  currentTab = 3;
                });
              },
              icon: Icon(Icons.percent),
              color: currentTab == 3 ? Colors.white : Colors.black,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = Screen4();
                  currentTab = 4;
                });
              },
              icon: Icon(Icons.mobile_friendly),
              color: currentTab == 3 ? Colors.white : Colors.black,
            ),
          ],
        ));
  }
}
