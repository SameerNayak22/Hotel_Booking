import 'package:flutter/material.dart';

Widget TopEditboxSearchflight() {
  return Container(color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
    
      //top edit for search flight box
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "New Delhi to Mumbai",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("25Jul | 1Adult | Economy"),
                ],
              ),
    
              Spacer(),
              Column(
                children: [
                  Icon(Icons.edit, size: 18, color: Colors.blue),
                  Text("Edit", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
