import 'package:flutter/material.dart';

Widget tripCard(Map trip) {
  return Container(
    child: Column(
      children: [
        Text(trip["date"], style: TextStyle(fontSize: 14)),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsetsGeometry.only(right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2C2C2C),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Image.asset(
                        trip["image"],
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Positioned(
                      top: 15,
                      right: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 18,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.tealAccent,
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsetsGeometry.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            trip["name"],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),

                          Spacer(),
                          Text(
                            trip["price"],
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
                          Text(
                            trip["location1"],
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.tealAccent,
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              trip["location2"],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "/per night",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          ...List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: Colors.tealAccent,
                              size: 16,
                            );
                          }),
                          SizedBox(width: 5),
                          Text(
                            trip["reviews"],
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
