import 'package:flutter/material.dart';

class DashboardOfferforyou extends StatefulWidget {
  DashboardOfferforyou({super.key});

  State<DashboardOfferforyou> createState() => _DashboardOfferforyouState();
}

class _DashboardOfferforyouState extends State<DashboardOfferforyou> {
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Offers For You",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          

          SizedBox(height: 10),

          SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    height: 180,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xffF0B626), width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: 120,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/offer.webp"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text("Hotels"),
                          Text(
                            "Up to 45% OFF* on Apartments & Villas",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
