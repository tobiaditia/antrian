import 'package:antrian/app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget buttonBottom(Color color,String text) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
      boxShadow: const [
        BoxShadow(
          color: Color(0xFF979C9E),
          offset: Offset(
            3.0,
            3.0,
          ),
          blurRadius: 3.0,
          spreadRadius: 0,
        ), 
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: gFontInterWhiteMedium.copyWith(fontSize: 14),
      ),
    ),
  );
}
