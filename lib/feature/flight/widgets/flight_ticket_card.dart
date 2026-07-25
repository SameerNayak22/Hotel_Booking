import 'package:flutter/material.dart';

class FlightTicketCard extends StatefulWidget {
  FlightTicketCard({super.key});

  State<FlightTicketCard> createState() => _FlightTicketCardState();
}

class _FlightTicketCardState extends State<FlightTicketCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/akasa_air_logo.png",
                  height: 38,
                  width: 38,
                ),
                Text(
                  "Akasa Air",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "21:05",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("Noida", style: TextStyle(fontSize: 11)),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text("2h 10m", style: TextStyle(fontSize: 11)),
                    SizedBox(
                      width: 50,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 2,
                      ),
                    ),
                    Text("Non Stop", style: TextStyle(fontSize: 11)),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "23:15",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("Mumbai", style: TextStyle(fontSize: 11)),
                  ],
                ),
                Spacer(),
                Text(
                  "₹ 6,468",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),

            SizedBox(height: 8),

            SizedBox(
              width: 80,
              child: Text(
                "(71 KM from New Delhi)",
                style: TextStyle(fontSize: 11),
                maxLines: 2,
              ),
            ),

            SizedBox(height: 8),

            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 194, 233, 214),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.green),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        maxLines: 2,
                        "Flat 300 OFF using HDFCEMI code | Flat ₹ 400 OFF using BINGOJINGO code",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
