import 'package:flutter/material.dart';
import 'package:hotel_booking/data/review.dart';
import 'package:hotel_booking/widgets/review.dart';

class AllReviews extends StatelessWidget {
  AllReviews({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 10,bottom: 20,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.pop(context);
                  },child: Icon(Icons.arrow_back, color: Colors.white,size: 28,)),
                  SizedBox(width: 20,),
                  Text(
                    "Review(${Review.reviews.length})",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30,),

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
        ),
      ),
    );
  }
}
