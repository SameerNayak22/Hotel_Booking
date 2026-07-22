import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/feature/flight/view_model/flight_home_viewmodel.dart';
import 'package:provider/provider.dart';

class TravellerAndClass extends StatefulWidget {
  TravellerAndClass({super.key});

  State<TravellerAndClass> createState() => _TravellerAndClassState();
}

class _TravellerAndClassState extends State<TravellerAndClass> {
  Widget build(BuildContext context) {
    return Consumer<FlightHomeViewmodel>(
      builder: (context, value, child) => Container(
        width: double.infinity,
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
                "SELECT TRAVELLERS & CLASS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("ADD NUMBERS OF TRAVELLERS"),

              Divider(color: Colors.grey),

              SizedBox(height: 10),

              //counting items
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Adult 12 yrs & above",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("on the day of travel"),
                    ],
                  ),

                  Spacer(),

                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove),
                        Spacer(),
                        Text(
                          "1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),
              Divider(color: Colors.grey),

              SizedBox(height: 5),

              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Adult 12 yrs & above",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("on the day of travel"),
                    ],
                  ),

                  Spacer(),

                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove),
                        Spacer(),
                        Text(
                          "1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),

              Divider(color: Colors.grey),

              SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Adult 12 yrs & above",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("on the day of travel"),
                    ],
                  ),

                  Spacer(),

                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove),
                        Spacer(),
                        Text(
                          "1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Text("CHOOSE CABIN CLASS"),
              SizedBox(height: 10),

              InkWell(
                onTap: () {
                  value.chooseCabin(0);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: (value.selectedCabin == 0)
                          ? AppTheme.primaryColor
                          : Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Economy/Premium Economy",
                      style: TextStyle(
                        color: (value.selectedCabin == 0)
                            ? AppTheme.primaryColor
                            : Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      value.chooseCabin(1);
                    },
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: (value.selectedCabin == 1)
                              ? AppTheme.primaryColor
                              : Colors.grey,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Premium Economy",
                          style: TextStyle(
                            color: (value.selectedCabin == 1)
                                ? AppTheme.primaryColor
                                : Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  InkWell(
                    onTap: () {
                      value.chooseCabin(2);
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: (value.selectedCabin == 2)
                              ? AppTheme.primaryColor
                              : Colors.grey,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Business Class",
                          style: TextStyle(
                            color: (value.selectedCabin == 2)
                                ? AppTheme.primaryColor
                                : Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              InkWell(
                onTap: () {
                  value.chooseCabin(3);
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: (value.selectedCabin == 3)
                          ? AppTheme.primaryColor
                          : Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "First Class",
                      style: TextStyle(
                        color: (value.selectedCabin == 3)
                            ? AppTheme.primaryColor
                            : Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              

            ],
          ),
        ),
      ),
    );
  }
}
