import 'package:flutter/material.dart';

Widget finishCard(Map trip) {
  bool imageLeft = trip["imageLeft"];

  Widget image = Padding(
    padding: imageLeft
        ? const EdgeInsets.only(left: 20)
        : const EdgeInsets.only(right: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        trip["image"],
        fit: BoxFit.cover,
        height: 155,
        width: 155,
      ),
    ),
  );

  Widget details = Expanded(
    child: Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: imageLeft
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          Text(
            trip["name"],
            style: const TextStyle(
              //color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            trip["location1"],
            style: const TextStyle(fontSize: 12),
          ),
          Text(
            trip["date"],
            textAlign: imageLeft ? TextAlign.left : TextAlign.right,
            style: const TextStyle(fontSize: 12),
          ),

          Row(
            mainAxisAlignment: imageLeft
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              Icon(Icons.location_on, color: Colors.tealAccent, size: 15),
              Text(
                trip["location2"],
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: imageLeft
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,

            children: [
              Icon(Icons.star, color: Colors.tealAccent, size: 15),
              Icon(Icons.star, color: Colors.tealAccent, size: 15),
              Icon(Icons.star, color: Colors.tealAccent, size: 15),
              Icon(Icons.star, color: Colors.tealAccent, size: 15),
              Icon(Icons.star, color: Colors.tealAccent, size: 15),
            ],
          ),
          Row(
            mainAxisAlignment: imageLeft
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              Text(
                trip["price"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("/per night"),
            ],
          ),
        ],
      ),
    ),
  );

  return imageLeft
      ? Row(children: [image, details])
      : Row(children: [details, image]);
}
