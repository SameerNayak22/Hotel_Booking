import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/all_reviews.dart';
import 'package:hotel_booking/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking/provider/sliver_screen_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SliverScreenProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/all_review": (context) => AllReviews(),
      },
    );
  }
}
