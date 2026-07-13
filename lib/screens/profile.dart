import 'package:flutter/material.dart';
import 'package:hotel_booking/data/profile_Data.dart';
import 'package:hotel_booking/screens/profile_item.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF121212),
      body: Padding(
        padding: EdgeInsets.only(top: 80, right: 25, left: 25, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kartik",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        //color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),

                    Text(
                      "View and Edit profile",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/profile_pic.webp"),
                ),
              ],
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  children: List.generate(profileItem.length, ((index) {
                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileItemScreen(
                              screenTitle: profileItem[index]["title"],
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Row(
                              children: [
                                Text(
                                  profileItem[index]["title"],
                                ),
                                Spacer(),
                                Icon(
                                  profileItem[index]["icon"],
                                  //color: Colors.grey,
                                ),
                              ],
                            ),
                          ),

                          Divider(thickness: 1, color: Colors.grey.shade800),
                        ],
                      ),
                    );
                  })),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
