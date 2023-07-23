import 'package:flutter/material.dart';
import 'package:travel_app/First_Screen.dart';
import 'package:travel_app/Profile_Screen.dart';
import 'package:travel_app/Second_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
