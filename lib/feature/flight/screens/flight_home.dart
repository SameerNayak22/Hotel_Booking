import 'package:flutter/material.dart';
import 'package:hotel_booking/feature/flight/widgets/multicity.dart';
import 'package:hotel_booking/feature/flight/widgets/oneway.dart';
import 'package:hotel_booking/feature/flight/widgets/roundtrip.dart';

class FlightHome extends StatefulWidget {
  FlightHome({super.key});

  State<FlightHome> createState() {
    return _FlightHomeState();
  }
}

class _FlightHomeState extends State<FlightHome> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          title: Text("Flight Search", style: TextStyle(fontSize: 18)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: const Color.fromARGB(255, 183, 225, 243),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue),
                  ),
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(height: 40, text: "ONE WAY"),
                    Tab(height: 40, text: "ROUNDTRIP"),
                    Tab(height: 40, text: "MULTICITY"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [Oneway(), Roundtrip(), Multicity()]),
            ),
          ],
        ),
      ),
    );
  }
}
