import 'package:flutter/material.dart';

class SliverScreenProvider extends ChangeNotifier {
  bool isCollapsed = false;
  bool isFaviourate = false;
  final ScrollController _controller = ScrollController();

  //appbar collapsed or not
  void updateCollapsed(bool value) {
    isCollapsed = value;
    notifyListeners();
  }

  //faviourat button
  void updatefaviourate() {
    isFaviourate = !isFaviourate;
    notifyListeners();
  }

  //automatic scroll click on botton
  ScrollController get controller => _controller;
  void collapsedAppbar(double animationHeight) {
    _controller.animateTo(
      animationHeight,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
    isCollapsed=true;
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
