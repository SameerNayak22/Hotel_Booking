import 'package:flutter/material.dart';
import 'package:hotel_booking/feature/flight/widgets/flight_date_row.dart';
import 'package:hotel_booking/feature/flight/widgets/flight_filter_row.dart';
import 'package:hotel_booking/feature/flight/widgets/flight_ticket_card.dart';
import 'package:hotel_booking/feature/flight/widgets/gap_delegate.dart';
import 'package:hotel_booking/feature/flight/widgets/top_editbox_searchflight.dart';

class FlightSearch extends StatefulWidget {
  FlightSearch({super.key});

  State<FlightSearch> createState() => _FlightSearchState();
}

class _FlightSearchState extends State<FlightSearch> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 76,
              pinned: true,
              flexibleSpace: TopEditboxSearchflight(),
            ),

            //date row
            SliverToBoxAdapter(child: FlightDateRow()),

            SliverPersistentHeader(pinned: true, delegate: GapDelegate2()),


            //sliver persistent header
            SliverPersistentHeader(pinned: true, delegate: FilterDelegate()),

            SliverPersistentHeader(pinned: true, delegate: GapDelegate()),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 5,
                  ),
                  child: FlightTicketCard(),
                );
              }, childCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
