import 'package:flutter/material.dart';
import 'package:plant_app/HomeScreen.dart';
import 'package:plant_app/CustomWidget/colorss.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
