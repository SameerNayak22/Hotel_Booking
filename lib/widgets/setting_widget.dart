import 'package:flutter/material.dart';
import 'package:hotel_booking/view_model/setting_viewmodel.dart';
import 'package:provider/provider.dart';

Widget setting() {
  return Consumer<SettingViewmodel>(
    builder: (context, value, child) => Column(
      children: [
        ListTile(
          title: Text("Theme"),
          trailing: IconButton(
            onPressed: () {
              value.toggleTheme();
            },
            icon: value.isdark
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
          ),
        ),
      ],
    ),
  );
}
