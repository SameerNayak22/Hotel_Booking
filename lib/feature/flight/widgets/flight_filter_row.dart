import 'package:flutter/material.dart';
import 'package:hotel_booking/feature/flight/view_model/flight_search_viewmodel.dart';
import 'package:provider/provider.dart';

class FilterDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 40;

  @override
  double get maxExtent => 40;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      elevation: 3,
      color: Colors.white,

      child: FlightFilterRow(),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

//widget jo show hoga
class FlightFilterRow extends StatefulWidget {
  FlightFilterRow({super.key});

  State<FlightFilterRow> createState() => _FlightFilterRowState();
}

class _FlightFilterRowState extends State<FlightFilterRow> {
  Widget build(BuildContext context) {
    return Consumer<FlightSearchViewmodel>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  value.filterTap(1);
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: (value.FilterIndex == 1)
                          ? Colors.blue
                          : Colors.grey.shade300,
                    ),
                    color: (value.FilterIndex == 1)
                        ? Colors.lightBlue.shade100
                        : Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      "Stops",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 5),

              InkWell(
                onTap: () {
                  value.filterTap(2);
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: (value.FilterIndex == 2)
                          ? Colors.blue
                          : Colors.grey.shade300,
                    ),
                    color: (value.FilterIndex == 2)
                        ? Colors.lightBlue.shade100
                        : Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      "Depart Time",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 5),

              InkWell(
                onTap: () {
                  value.filterTap(3);
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: (value.FilterIndex == 3)
                          ? Colors.blue
                          : Colors.grey.shade300,
                    ),
                    color: (value.FilterIndex == 3)
                        ? Colors.lightBlue.shade100
                        : Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      "Arrival Time",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 5),

              InkWell(
                onTap: () {
                  value.filterTap(4);
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: (value.FilterIndex == 4)
                          ? Colors.blue
                          : Colors.grey.shade300,
                    ),
                    color: (value.FilterIndex == 4)
                        ? Colors.lightBlue.shade100
                        : Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      "Price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 5),
              InkWell(
                onTap: () {
                  value.filterTap(5);
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: (value.FilterIndex == 5)
                          ? Colors.blue
                          : Colors.grey.shade300,
                    ),
                    color: (value.FilterIndex == 5)
                        ? Colors.lightBlue.shade100
                        : Colors.grey.shade300,
                  ),
                  child: Center(
                    child: Text(
                      "Time",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
