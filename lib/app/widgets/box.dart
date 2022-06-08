import 'package:antrian/app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget box() {
  return Container(
    margin: const EdgeInsets.only(right: 16),
    width: 120,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/events/event1.jpg',
            fit: BoxFit.cover,
            width: 120,
            height: 120,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Pembagian Pupuk',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: gFontInterBlackBold.copyWith(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '2 Jam lagi',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: gFontInterGrayRegular.copyWith(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Balaidesa',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: gFontInterGrayRegular.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
