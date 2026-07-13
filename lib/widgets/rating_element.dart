import 'package:flutter/material.dart';

Widget rating_Element(String title, double Value) {
  return Row(
      children: [
        SizedBox(
          width: 70,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ),
        SizedBox(width: 15),
        SizedBox(
          width: 5*Value,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
    
            child: LinearProgressIndicator(
              minHeight: 4,
              value: 1,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFF42E6C3), // Green line
              ),
            ),
          ),
        ),
      ],
    
  );
}
