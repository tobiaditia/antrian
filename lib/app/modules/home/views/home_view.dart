import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/widgets/box.dart';
import 'package:antrian/app/widgets/shimmer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          controller.date,
                          style: gFontInterBlackRegular.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    Container(
                      width: 100,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 169, 172, 173),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6))),
                        child: GetBuilder<HomeController>(
                            builder: (homeController) {
                          return homeController.weather == null
                              ? Column(
                                  children: [
                                    builderShimmer(10),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    builderShimmer(10),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/app/weathers/${homeController.weather!.weather[0].icon}.png',
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                        '${homeController.weather!.main.temp}° C',
                                        style: gFontInterBlackMedium.copyWith(
                                            fontSize: 12)),
                                  ],
                                );
                        })),
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
        heroTag: null,
        elevation: 2,
        onPressed: () {
          Get.bottomSheet(
              Container(
                height: 180,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: colorComponentWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 6,
                      width: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xFFCDCFD0),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colorComponentPrimary,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Scan QR Code',
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colorComponentPrimary,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Kode Acara',
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              elevation: 12);
        },
        backgroundColor: colorComponentPrimary,
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
