import 'package:antrian/app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget buttonBottom(Color color,String text) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
      child: Text(
        text,
        style: gFontInterWhiteMedium.copyWith(fontSize: 14),
      ),
    ),
  );
}
