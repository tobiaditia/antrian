import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_detail_controller.dart';

class EventDetailView extends GetView<EventDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: colorComponentPrimary,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              elevation: 2,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vaksin Booster",
                      style: gFontInterBlackBold.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Rabu, 20 Jan 2022 10:00 WIB",
                      style: gFontInterBlackBold.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Balaidesa Banjarejo",
                      style: gFontInterGrayRegular.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Antrian anda",
                          style: gFontInterGrayRegular.copyWith(fontSize: 14),
                        ),
                        Text(
                          "3",
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Antrian saat ini",
                          style: gFontInterGrayRegular.copyWith(fontSize: 14),
                        ),
                        Text(
                          "1",
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total antrian",
                          style: gFontInterGrayRegular.copyWith(fontSize: 14),
                        ),
                        Text(
                          "30",
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rata - rata waktu",
                          style: gFontInterGrayRegular.copyWith(fontSize: 14),
                        ),
                        Text(
                          "1 menit",
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Estimasi waktu",
                          style: gFontInterGrayRegular.copyWith(fontSize: 14),
                        ),
                        Text(
                          "3 menit lagi",
                          style: gFontInterBlackMedium.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Denah lokasi",
                          style: gFontInterGrayRegular.copyWith(fontSize: 14),
                        ),
                        Text(
                          "Balaidesa Banjarejo",
                          style: gFontInterBlueMedium.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
          margin: EdgeInsets.all(margin),
          child: buttonBottom(colorComponentRed, "Batalkan antrian")),
    );
  }
}
