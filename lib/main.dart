import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home.dart';
import 'package:hotel_booking/screens/sliver_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        //"/sliver_screen": (context) => SliverScreen(),
      },
    );
  }
}
