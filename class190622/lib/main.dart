import 'package:class190622/bottom_navigation_bar.dart';
import 'package:class190622/home.dart';
import 'package:class190622/shared_preference_package.dart';
import 'package:class190622/tabbar.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SharedPreferencesDemo(),
    );
  }
}
