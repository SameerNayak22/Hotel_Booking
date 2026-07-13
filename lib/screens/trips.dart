import 'package:flutter/material.dart';
import 'package:hotel_booking/data/best_deals.dart';
import 'package:hotel_booking/widgets/faviourate_card.dart';
import 'package:hotel_booking/widgets/finish_card.dart';
import 'package:hotel_booking/widgets/trip_card.dart';
import 'package:hotel_booking/widgets/trip_tabs.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({super.key});
  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Trip",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      //color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TripTabs(
                    onTabChanged: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),

                  SizedBox(height: 25),
                ],
              ),
            ),

            selectedIndex == 0
                ? Expanded(
                    child: ListView.builder(
                      itemCount: BestDeals.bestDeals.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsetsGeometry.only(bottom: 30),
                          child: tripCard(BestDeals.bestDeals[index]),
                        );
                      },
                    ),
                  )
                : selectedIndex == 1
                ? Expanded(
                    child: ListView.builder(
                      itemCount: BestDeals.bestDeals.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsetsGeometry.only(bottom: 10),
                          child: finishCard(BestDeals.bestDeals[index]),
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: BestDeals.bestDeals.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsetsGeometry.only(bottom: 30),
                          child: faviourateCard(BestDeals.bestDeals[index]),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
