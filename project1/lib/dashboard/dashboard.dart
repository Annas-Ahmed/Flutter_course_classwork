import 'package:flutter/material.dart';
import 'package:project1/dashboard/offers.dart';
import 'package:project1/dashboard/popularproduct.dart';
import 'package:project1/dashboard/sales.dart';

class Dasboard extends StatelessWidget {
  const Dasboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: Center (child: Column(
        children: [
          PopularProduct(),
          new Image.asset('assets/images/carImage.jfif'),
          Offers(),
          Sales()
        ],
      ),
    ));
  }
}