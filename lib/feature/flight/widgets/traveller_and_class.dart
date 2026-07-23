import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/feature/flight/view_model/oneway_viewmodel.dart';
import 'package:provider/provider.dart';

class TravellerAndClass extends StatefulWidget {
  TravellerAndClass({super.key});

  State<TravellerAndClass> createState() => _TravellerAndClassState();
}

class _TravellerAndClassState extends State<TravellerAndClass> {
  Widget build(BuildContext context) {
    return Consumer<OnewayViewmodel>(
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

              Divider(color: Colors.grey.shade300),

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
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            value.decrement(1);
                          },
                          child: Icon(Icons.remove,color: Colors.grey,),
                        ),
                        Spacer(),
                        Text(
                          value.adult.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            value.increment(1);
                          },
                          child: Icon(Icons.add,color: Colors.grey,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),
              Divider(color: Colors.grey.shade300),

              SizedBox(height: 5),

              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Children 2-12 yrs",
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
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            value.decrement(2);
                          },
                          child: Icon(Icons.remove),
                        ),
                        Spacer(),
                        Text(
                          value.children.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            value.increment(2);
                          },
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),

              Divider(color: Colors.grey.shade300),

              SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Infant under 2 yrs",
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
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            value.decrement(3);
                          },
                          child: Icon(Icons.remove),
                        ),
                        Spacer(),
                        Text(
                          value.infant.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            value.increment(3);
                          },
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Text("CHOOSE CABIN CLASS"),
              SizedBox(height: 10),



              Row(
                children: [
                  InkWell(
                    onTap: () {
                      value.chooseCabin(0);
                    },
                    child: Container(
                      height: 40,
                      width: 135,
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
                          "Premium Economy",
                          style: TextStyle(
                            color: (value.selectedCabin == 0)
                                ? AppTheme.primaryColor
                                : Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Spacer(),

                  InkWell(
                    onTap: () {
                      value.chooseCabin(1);
                    },
                    child: Container(
                      height: 40,
                      width: 135,
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
                          "Economy Class",
                          style: TextStyle(
                            color: (value.selectedCabin == 1)
                                ? AppTheme.primaryColor
                                : Theme.of(context).textTheme.bodyMedium?.color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      value.chooseCabin(3);
                    },
                    child: Container(
                      height: 40,
                      width: 135,
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

                  Spacer(),

                  InkWell(
                    onTap: () {
                      value.chooseCabin(2);
                    },
                    child: Container(
                      height: 40,
                      width: 135,
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
            ],
          ),
        ),
      ),
    );
  }
}
