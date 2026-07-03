import 'package:flutter/material.dart';

class TripTabs extends StatefulWidget {
  final Function(int) onTabChanged;
  TripTabs({super.key, required this.onTabChanged});

  State<TripTabs> createState() => _TripTabsState();
}

class _TripTabsState extends State<TripTabs> {
  int selectedIndex = 0;
  List tabs = ["Upcoming", "Finished", "Favorites"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xff2C2C2C),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          bool isSelected = selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
                widget.onTabChanged(selectedIndex);
              },
              child: Center(
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: isSelected ? Colors.tealAccent : Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
