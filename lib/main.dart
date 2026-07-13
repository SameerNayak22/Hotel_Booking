import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/screens/all_reviews.dart';
import 'package:hotel_booking/screens/home.dart';
import 'package:hotel_booking/screens/login.dart';
import 'package:hotel_booking/screens/signup.dart';
import 'package:hotel_booking/view_model/setting_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking/view_model/sliver_screen_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SliverScreenProvider()),
        ChangeNotifierProvider(create: (_) => SettingViewmodel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    final settingProvider = context.watch<SettingViewmodel>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/signup",

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingProvider.themeMode,

      routes: {
        "/": (context) => Home(),
        "/all_review": (context) => AllReviews(),
        "/login":(context)=>Login(),
        "/signup":(context)=>Signup(),
      },
    );
  }
}
