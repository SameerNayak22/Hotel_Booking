import 'package:flutter/foundation.dart';

class DashboardViewmodel extends ChangeNotifier {
  int _navIndex=0;
  int get navIndex => _navIndex;

  void selectedIndex(int value) {
    _navIndex = value;
    notifyListeners();
  }
}
