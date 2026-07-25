import 'package:flutter/material.dart';

class FlightSearchViewmodel extends ChangeNotifier {
  //date Tap color change
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void dateTap(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

//filter Tap color change
  int _filterIndex = 1;
  int get FilterIndex => _filterIndex;
  void filterTap(int index) {
    _filterIndex = index;
    notifyListeners();
  }


}
