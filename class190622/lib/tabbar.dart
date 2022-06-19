
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabbarPractice extends StatefulWidget {
  const TabbarPractice({Key? key}) : super(key: key);

  @override
  State<TabbarPractice> createState() => TtabbarPracticeState();
}

class TtabbarPracticeState extends State<TabbarPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
      length: 3,
      child:Column(
        children: [
          TabBar(tabs: [
            Tab(
              text: "tab1",
            ),
            Tab(
              text: "tab2",
            ),
            Tab(
              text: "tab3",
            )
          ],
          ),

          Expanded(
            child: TabBarView(children: [
              Container(
                width: 200,
                height:200,
                color: Colors.red
              ),
          
              Container(
                width: 200,
                height:200,
                color: Colors.yellow
              ),
              Container(
                width: 200,
                height:200,
                color: Colors.blue
              ),
          
          
          
            ]),
          )
        ],
      )
      )
      
    );
  }
}