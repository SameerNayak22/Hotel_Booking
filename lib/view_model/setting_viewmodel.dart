import 'package:flutter/material.dart';
import 'package:hotel_booking/core/app_theme.dart';

class SettingViewmodel extends ChangeNotifier{
bool _isdark =false;

ThemeMode get themeMode => _isdark?ThemeMode.dark:ThemeMode.light;

bool get isdark => _isdark;

void toggleTheme(){
  _isdark = !_isdark;
  notifyListeners();
}
}