import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/feature/flight/screens/flight_home.dart';
import 'package:hotel_booking/feature/flight/view_model/multicity_viewmodel.dart';
import 'package:hotel_booking/feature/flight/view_model/oneway_viewmodel.dart';
import 'package:hotel_booking/screens/all_reviews.dart';
import 'package:hotel_booking/screens/dashboard.dart';
import 'package:hotel_booking/screens/login.dart';
import 'package:hotel_booking/screens/signup.dart';
import 'package:hotel_booking/view_model/dashboard_viewmodel.dart';
import 'package:hotel_booking/view_model/setting_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking/view_model/sliver_screen_provider.dart';

void main() {
  //top screen upper dark grey shadow remove
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SliverScreenProvider()),
        ChangeNotifierProvider(create: (_) => SettingViewmodel()),
        ChangeNotifierProvider(create: (_) => DashboardViewmodel()),
        ChangeNotifierProvider(create: (_) => OnewayViewmodel()),
        ChangeNotifierProvider(create: (_) => MulticityViewmodel()),
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
        "/all_review": (context) => AllReviews(),
        "/login": (context) => Login(),
        "/signup": (context) => Signup(),
        "/dashboard": (context) => Dashboard(),
        "/flight_home": (context) => FlightHome(),
      },
    );
  }
}
