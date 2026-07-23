import 'package:flutter/material.dart';
import 'package:hotel_booking/feature/flight/widgets/add_city_row.dart';

class MulticityViewmodel extends ChangeNotifier{
  List<Widget> _city = [];

  List<Widget> get city => _city;

  void addCity(){
    _city.add(AddCityRow());
    notifyListeners();
  }
}