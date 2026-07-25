import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/feature/flight/screens/flight_search.dart';
import 'package:hotel_booking/feature/flight/view_model/multicity_viewmodel.dart';
import 'package:hotel_booking/feature/flight/widgets/traveller_and_class.dart';
import 'package:hotel_booking/widgets/dashboard_offerforyou.dart';
import 'package:provider/provider.dart';

class Multicity extends StatefulWidget {
  Multicity({super.key});

  State<Multicity> createState() => _MulticityState();
}

class _MulticityState extends State<Multicity> {
  Widget build(BuildContext context) {
    return Consumer<MulticityViewmodel>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    //first box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FROM",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 100,
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
                                  "DEL",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("New Delhi"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    //second box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TO",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 100,
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
                                  "BOM",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Mumbai"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    //third box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DATE",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 100,
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
                                  "24 Jul",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Fri, 2026"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              //secaond row
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 55,
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
                              "BOM",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Mumbai"),
                          ],
                        ),
                      ),
                    ),

                    Spacer(),

                    Container(
                      width: 100,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue),
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
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Spacer(),
                    Container(
                      width: 100,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue),
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
                              "DATE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Column(children: value.city),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: InkWell(
                  onTap: () {
                    if (value.city.length < 3) {
                      value.addCity();
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Center(
                      child: Text(
                        "+ADD CITY",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TravellerAndClass(),
              ),

              SizedBox(height: 20),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlightSearch()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
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
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: DashboardOfferforyou(),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
