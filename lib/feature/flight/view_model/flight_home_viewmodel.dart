import 'package:flutter/material.dart';

class FlightHomeViewmodel extends ChangeNotifier {
  int _selectedCabin = 0;

  int get selectedCabin => _selectedCabin;

  void chooseCabin(int choose) {
    _selectedCabin = choose;
    notifyListeners();
  }
}
