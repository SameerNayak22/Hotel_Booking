import 'package:flutter/material.dart';

class OnewayViewmodel extends ChangeNotifier {
  //multiple text select which cabin
  int _selectedCabin = 0;
  int get selectedCabin => _selectedCabin;
  void chooseCabin(int choose) {
    _selectedCabin = choose;
    notifyListeners();
  }

  //counter numbers of ticket
  int _adult = 1;
  int _children = 0;
  int _infant = 0;

  int get adult => _adult;
  int get children => _children;
  int get infant => _infant;

  void increment(int choice) {
    if (choice == 1) {
      _adult++;
    }

    if (choice == 2) {
      _children++;
    }

    if (choice == 3) {
      _infant++;
    }

    notifyListeners();
  }

  void decrement(int choice) {
    if (choice == 1) {
      if (_adult>1) {
        _adult--;
      }
    }

    if (choice == 2) {
      if (_children>0) {
        _children--;
      }
    }

    if (choice == 3) {
      if (_infant>0) {
        _infant--;
      }
    }

    notifyListeners();
  }


}
