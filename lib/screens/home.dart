import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';
import 'package:hotel_booking/data/best_deals.dart';
import 'package:hotel_booking/data/places_data.dart';
import 'package:hotel_booking/data/popular_places.dart';
import 'package:hotel_booking/screens/sliver_screen.dart';
import 'package:hotel_booking/screens/trips.dart';
import 'package:hotel_booking/screens/profile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  Home({super.key});
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  Timer? timer;
  int _navIndex = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      currentIndex++;
      if (currentIndex == PlacesData.places.length) {
        currentIndex = 0;
      }

      _controller.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF121212),
      body: _navIndex == 0
          ? ListView(
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 465,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: PlacesData.places.length,

                    itemBuilder: (context, index) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            PlacesData.places[index]["image"],
                            fit: BoxFit.cover,
                          ),

                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black26,
                                  Colors.black38,
                                ],
                              ),
                            ),
                          ),

                          SafeArea(
                            child: Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      InkWell
                                      (onTap: () {
                                        Navigator.pop(context);
                                      },
                                        child: CircleAvatar(
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: Color(0xff383838),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            color: Color(0xff383838),
                                          ),
                                          child: TextField(
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                              ),
                                              hintText: "Where are you going?",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                    vertical: 14,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Spacer(),

                                  Text(
                                    PlacesData.places[index]["title"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),

                                  Text(
                                    PlacesData.places[index]["subtitle"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 8),

                                  Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppTheme.primaryColor,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 10,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "View Hotel",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      Spacer(),
                                      SmoothPageIndicator(
                                        controller: _controller,
                                        count: PlacesData.places.length,
                                        effect: WormEffect(
                                          dotColor: Colors.grey,
                                          activeDotColor: Colors.teal,
                                          dotHeight: 10,
                                          dotWidth: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    "Popular Destination",
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: PopularPlaces.popular_places.length,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 280,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                PopularPlaces.popular_places[index]["image"],
                                fit: BoxFit.cover,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black54,
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Text(
                                  PopularPlaces.popular_places[index]["title"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        margin: EdgeInsets.only(right: 20),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Deals",
                        style: TextStyle(
                          //color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "View all",
                            //style: TextStyle(color: Colors.tealAccent),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            //color: Colors.tealAccent,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ...List.generate(BestDeals.bestDeals.length, (index) {
                  final deal = BestDeals.bestDeals[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SliverScreen(deal: deal);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 16),

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
                                deal["image"],
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
                                    deal["name"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    deal["location1"],
                                    style: TextStyle(color: Colors.grey),
                                  ),
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
                                          deal["location2"],
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          deal["price"],
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
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.tealAccent,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.tealAccent,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.tealAccent,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14,
                                          color: Colors.tealAccent,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          size: 14,
                                          color: Colors.tealAccent,
                                        ),
                                        Spacer(),
                                        Text(
                                          "/per night",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
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
                    ),
                  );
                }),
              ],
            )
          : _navIndex == 1
          ? TripsScreen()
          : ProfileScreen(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        selectedItemColor: AppTheme.primaryColor,
        onTap: (value) {
          setState(() {
            _navIndex = value;
          });
        },
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
  }
}
