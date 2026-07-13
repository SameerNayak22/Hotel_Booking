import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hotel_booking/data/best_deals.dart';
import 'package:hotel_booking/view_model/sliver_screen_provider.dart';
import 'package:hotel_booking/screens/all_reviews.dart';
import 'package:hotel_booking/widgets/rating_element.dart';
import 'package:hotel_booking/widgets/review.dart';
import 'package:hotel_booking/widgets/sliver_hotel_infocard.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class SliverScreen extends StatefulWidget {
  final Map deal;
  SliverScreen({super.key, required this.deal});
  State<SliverScreen> createState() => _SliverScreen();
}

class _SliverScreen extends State<SliverScreen> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final provider = context.watch<SliverScreenProvider>();
    double bodyHeight = (MediaQuery.of(context).size.height) - kToolbarHeight;
    return Scaffold(  

      body: NotificationListener<ScrollNotification>(
        onNotification: (scroll) {
          bool Collapsed =
              scroll.metrics.pixels >= bodyHeight;
              
          provider.updateCollapsed(Collapsed);

          return false;
        },
        child: CustomScrollView(
          controller: provider.controller,
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height,
              collapsedHeight: kToolbarHeight,
              automaticallyImplyLeading: false,
              backgroundColor: provider.isCollapsed
                  ? Colors.teal
                  : Colors.transparent,
              titleSpacing: 0,
              title: provider.isCollapsed
                  ? Text(
                      widget.deal["name"],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
              shape: provider.isCollapsed
                  ? Border(
                      bottom: BorderSide(color: Colors.grey.shade300, width: 1),
                    )
                  : null,
              leading: provider.isCollapsed
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
              elevation: 0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        widget.deal["image"],
                        fit: BoxFit.cover,
                      ),
                    ),

                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black.withOpacity(0.25),
                              Colors.black.withOpacity(0.65),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 60,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white.withOpacity(0.8),
                          child: Icon(
                            Icons.arrow_back,
                            size: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 60,
                      right: 10,
                      child: InkWell(
                        onTap: () {
                          provider.updatefaviourate();
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black87.withOpacity(0.87),
                          child: Icon(
                            provider.isFaviourate
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 25,
                      right: 25,
                      bottom: 120,
                      child: hotelcard(context, widget.deal),
                    ),

                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.30,
                      right: MediaQuery.of(context).size.width * 0.30,
                      bottom: 65,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                          child: Container(
                            height: 40,
                            width: 80,

                            child: InkWell(
                              onTap: () {
                                provider.collapsedAppbar(bodyHeight);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "More Details",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.deal["name"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          widget.deal["price"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          widget.deal["location1"],
                          style: TextStyle(color: Colors.white70),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.tealAccent,
                          ),
                        ),
                        Text(
                          widget.deal["location2"],
                          style: TextStyle(color: Colors.white70),
                        ),

                        Spacer(),
                        Text(
                          "/per night",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Divider(thickness: 1, color: Colors.grey.shade800),

                    SizedBox(height: 20),

                    Text(
                      "Summary",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ReadMoreText(
                      widget.deal["summary"],
                      trimMode: TrimMode.Line,
                      trimLength: 3,
                      trimCollapsedText: "Read more",
                      trimExpandedText: "Read Less",
                      style: TextStyle(color: Colors.white70),
                      moreStyle: TextStyle(color: Colors.teal),
                      lessStyle: TextStyle(color: Colors.teal),
                    ),

                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "8.8",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 40),

                              Text(
                                "Overall rating",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              rating_Element("Room", 40.0),
                              rating_Element("Services", 30.0),
                              rating_Element("Location", 18.0),
                              rating_Element("Price", 22.0),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Text(
                          "Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.teal),
                      ],
                    ),

                    SizedBox(height: 20),
                    Container(
                      height: 130,
                      color: Colors.black,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: BestDeals.bestDeals.length,
                        //padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                BestDeals.bestDeals[index]["image"],
                                width: 130,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllReviews(),
                              ),
                            );
                          },
                          child: Text(
                            "View all",
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllReviews(),
                              ),
                            );
                          },
                          child: Icon(Icons.arrow_forward, color: Colors.teal),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    review(context, 1),
                    review(context, 2),

                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          width: MediaQuery.of(context).size.width,
                          "assets/images/map.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.teal,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Book now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
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
