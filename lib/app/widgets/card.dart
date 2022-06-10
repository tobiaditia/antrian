import 'package:antrian/app/constants/theme.dart';
import 'package:flutter/material.dart';

Widget card() {
  return Row(children: [
    CircleAvatar(
      backgroundImage: const AssetImage('assets/images/events/event1.jpg'),
      radius: 25,
      backgroundColor: colorComponentPrimary,
    ),
    const SizedBox(
      width: 12,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vaksin Booster",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: gFontInterBlackBold.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Mulai jam 08.00 WIB",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: gFontInterGrayRegular.copyWith(fontSize: 14),
          ),
        ],
      ),
    ),
    Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                color: colorComponentPrimary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text("#3",
                    textAlign: TextAlign.center,
                    style: gFontInterWhiteMedium.copyWith(fontSize: 12)),
              )),
        ),
        const SizedBox(height: 4,),
        GestureDetector(
          onTap: () {},
          child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                color: colorComponentBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text("#3",
                    textAlign: TextAlign.center,
                    style: gFontInterWhiteMedium.copyWith(fontSize: 12)),
              )),
        ),
      ],
    )
  ]);
}
