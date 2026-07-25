import 'package:flutter/material.dart';
import 'package:hotel_booking/feature/flight/view_model/flight_search_viewmodel.dart';
import 'package:provider/provider.dart';

class FlightDateRow extends StatefulWidget {
  FlightDateRow({super.key});

  State<FlightDateRow> createState() {
    return _FlightDateRowState();
  }
}

class _FlightDateRowState extends State<FlightDateRow> {
  Widget build(BuildContext context) {
    return Consumer<FlightSearchViewmodel>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10,bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Center(
                      child: Text(
                        "JULY",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 4),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(7, (index) {
                    return InkWell(
                      onTap: () {
                        value.dateTap(index);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: value.selectedIndex == index
                                ? Colors.blue
                                : Colors.grey.shade300,
                          ),
                          color: (value.selectedIndex == index)
                              ? Colors.lightBlue.shade100
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [Text("Fri, Jul 24"), Text("₹ 6,418")],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
