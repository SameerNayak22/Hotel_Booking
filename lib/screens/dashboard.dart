import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/screens/profile.dart';
import 'package:hotel_booking/view_model/dashboard_viewmodel.dart';
import 'package:hotel_booking/widgets/dashboard_offerforyou.dart';
import 'package:hotel_booking/widgets/dashboard_upper_options.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});
  State<Dashboard> createState() {
    return _DashbordState();
  }
}

class _DashbordState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardViewmodel>(builder: (context, value, child) =>
      Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body:(value.navIndex == 0 || value.navIndex==1)? SingleChildScrollView(
          child: Column(
            children: [
              dashboardUpperOptions(context),

               Padding(
                 padding: const EdgeInsets.only(right: 12,left: 12),
                 child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/hotel_add.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
               ),
              
              SizedBox(height: 10),
              DashboardOfferforyou(),
            ],
          ),
        ):ProfileScreen(),
      
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: value.navIndex,
          selectedItemColor: AppTheme.primaryColor,
          onTap: (selectedvalue){
            value.selectedIndex(selectedvalue);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Trips",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile")
          ],
        ),
      ),
    );
  }
}
