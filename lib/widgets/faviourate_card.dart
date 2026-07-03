import 'package:flutter/material.dart';

Widget faviourateCard(Map trip) {
  return Padding(
    padding: EdgeInsets.fromLTRB(20, 0, 20, 1),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff2A2A2A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.horizontal(
              left: Radius.circular(16),
            ),
            child: Image.asset(
              trip["image"],
              height: 110,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trip["name"],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(trip["location1"], style: TextStyle(color: Colors.grey)),
                SizedBox(height: 14),
                Padding(
                  padding: EdgeInsetsGeometry.only(right: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.tealAccent,
                      ),
                      SizedBox(width: 3),
                      Text(
                        trip["location2"],
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        trip["price"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 14, color: Colors.tealAccent),
                      Icon(Icons.star, size: 14, color: Colors.tealAccent),
                      Icon(Icons.star, size: 14, color: Colors.tealAccent),
                      Icon(Icons.star, size: 14, color: Colors.tealAccent),
                      Icon(Icons.star_half, size: 14, color: Colors.tealAccent),
                      Spacer(),
                      Text(
                        "/per night",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
