import 'package:flutter/material.dart';

class SliverScreenProvider extends ChangeNotifier {
  bool isCollapsed = false;
  bool isFaviourate = false;
  void updateCollapsed(bool value) {
    isCollapsed = value;
    notifyListeners();
  }

  void updatefaviourate() {
    isFaviourate = !isFaviourate;
    notifyListeners();
  }
}
