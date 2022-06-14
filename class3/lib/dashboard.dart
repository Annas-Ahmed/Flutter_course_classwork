import 'package:flutter/material.dart';

import 'widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: 
        // SingleChildScrollView(
          // child:
           Column(
            children: [
              Container(height: 200, width: MediaQuery.of(context).size.width,color: Colors.blue),
               Expanded(child: ListView(

                //  shrinkWrap: true,
                //  physics: NeverScrollableScrollPhysics(),
                 children: [
                listTileFunction("Annas", "Sett"),
                listTileFunction("Ahmed", "OK"),
                listTileFunction("Waqas", "Done"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
                listTileFunction("HAmza", "sahi"),
            ])
           )],
          ),
        );
  }
}
