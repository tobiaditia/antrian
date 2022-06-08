import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/widgets/box.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: gFontInterBlackBold.copyWith(fontSize: 28),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Monday, January 25, 2021",
                          style: gFontInterBlackRegular.copyWith(fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Akan Datang",
                      style: gFontInterBlackBold.copyWith(fontSize: 16),
                    ),
                    Text(
                      "Lihat semua",
                      style: gFontInterGrayRegular.copyWith(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      box(),
                      box(),
                      box(),
                      box(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Acaraku",
                      style: gFontInterBlackBold.copyWith(fontSize: 16),
                    ),
                    Text(
                      "Lihat semua",
                      style: gFontInterGrayRegular.copyWith(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      box(),
                      box(),
                      box(),
                      box(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorComponentPrimary,
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
