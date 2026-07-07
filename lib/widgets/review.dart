import 'package:flutter/material.dart';
import 'package:hotel_booking/data/review.dart';

Widget review(BuildContext context,int index) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Review.reviews[index]["image"],
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),

            Expanded( // <-- Important
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Review.reviews[index]["name"],
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    Review.reviews[index]["last_update"],
                    style: const TextStyle(color: Colors.white70),
                  ),
                  Text(
                    Review.reviews[index]["rating"],
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        Text(
          Review.reviews[index]["description"],
          style: const TextStyle(
            color: Colors.white70,
            height: 1.5,
          ),
        ),

        const SizedBox(height: 15),

        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Reply",
                style: TextStyle(color: Colors.teal),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward,
                color: Colors.teal,
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Divider(
          thickness: 1,
          color: Colors.grey.shade800,
        ),
      ],
    ),
  );
}