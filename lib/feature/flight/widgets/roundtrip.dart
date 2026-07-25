import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/feature/flight/screens/flight_search.dart';
import 'package:hotel_booking/feature/flight/widgets/traveller_and_class.dart';
import 'package:hotel_booking/widgets/dashboard_offerforyou.dart';

class Roundtrip extends StatefulWidget {
  Roundtrip({super.key});

  State<Roundtrip> createState() => _RoundtripState();
}

class _RoundtripState extends State<Roundtrip> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //first row
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 15,
                              right: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "FROM",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "New Delhi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "DEL-Indira Gandhi International Airport",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              
                      SizedBox(width: 8),
              
                      Expanded(
                        child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 15,
                              right: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TO",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Mumbai",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "BOM-Chhatrapati Shivaji International Airport",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              
                  Positioned(
                    top: 20,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.swap_horiz, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            SizedBox(height: 10),
      
            //second row
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 15,
                          right: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DEPARTURE DATE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "23 Jul ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Thu,2026"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(width: 8),
              
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 5,
                          left: 15,
                          right: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RETURN DATE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "24 Jul ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Fri, 2026"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            SizedBox(height: 10),
      
            //single container third line
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TravellerAndClass(),
            ),
      
            SizedBox(height: 20),
      
            InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlightSearch()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Search Flights",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
      
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: DashboardOfferforyou(),
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
