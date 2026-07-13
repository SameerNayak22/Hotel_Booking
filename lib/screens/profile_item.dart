import 'package:flutter/material.dart';
import 'package:hotel_booking/widgets/setting_widget.dart';

class ProfileItemScreen extends StatelessWidget {
  final String screenTitle;
  ProfileItemScreen({super.key, required this.screenTitle});

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        //foregroundColor: Colors.white,
        title: Text(screenTitle, ),
        //backgroundColor: Color(0xFF121212),
      ),

      body: _getbody(),
    );
  }

  Widget _getbody() {
    switch (screenTitle) {
      case "Setting":
        return setting();
      default:
        return Center(
          child: Text(
            "Screen yet not ready this is in devlopment phase",
            //style: TextStyle(color: Colors.white),
          ),
        );
    }
  }
}
