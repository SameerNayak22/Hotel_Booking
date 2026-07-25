import 'package:flutter/material.dart';


//second gap
class GapDelegate extends SliverPersistentHeaderDelegate{
   @override
  double get minExtent => 15;

  @override
  double get maxExtent => 15;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(oldDelegate) => false;
}

//first devloper
class GapDelegate2 extends SliverPersistentHeaderDelegate{
   @override
  double get minExtent => 5;

  @override
  double get maxExtent => 5;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(oldDelegate) => false;
}