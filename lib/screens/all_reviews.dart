import 'package:flutter/material.dart';
import 'package:hotel_booking/data/review.dart';
import 'package:hotel_booking/widgets/review.dart';

class AllReviews extends StatelessWidget {
  AllReviews({super.key});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.close, color: Colors.white),
          Text(
            "Review(${Review.reviews.length})",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Review.reviews.length,
              itemBuilder: (context, index) {
                return review(context, index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
