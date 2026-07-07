import 'dart:ui';

import 'package:flutter/material.dart';

Widget hotelcard(BuildContext context, Map deal) {
  return ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(30),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: MediaQuery.of(context).size.width - 30,
        //height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              deal["name"],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),

            Row(
              children: [
                Text(
                  deal["location1"],
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Icon(Icons.location_on, size: 15, color: Colors.tealAccent),
                Text(
                  deal["location2"],
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Spacer(),
                Text(
                  deal["price"],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                ...List.generate(5, (index) {
                  return Icon(Icons.star, color: Colors.tealAccent, size: 15);
                }),

                Text(
                  deal["reviews"],
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Spacer(),
                Text("/per night", style: TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),

            SizedBox(height: 10,),

            InkWell(
              child: Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    "Book now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff53d7c8),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
