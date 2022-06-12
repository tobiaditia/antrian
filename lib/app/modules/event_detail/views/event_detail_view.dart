import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_detail_controller.dart';

class EventDetailView extends GetView<EventDetailController> {
  bool isMine = false;

  EventDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: colorComponentPrimary,
              expandedHeight: !isMine ? 100.0 : 200.0,
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
                !isMine
                    ? Column(
                        children: [
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: colorComponentGray,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                        'assets/images/events/event1.jpg'),
                                    radius: 20,
                                    backgroundColor: colorComponentPrimary,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Andi Hartono',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: gFontInterBlackBold.copyWith(
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 38,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: colorComponentPrimary,
                                      elevation: 2,
                                      shape: const CircleBorder(),
                                      fixedSize: const Size(150, 150)),
                                  child: Text(
                                    "100",
                                    style: gFontInterWhiteBold.copyWith(
                                        fontSize: 32),
                                  ),
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 2,
                                          primary: colorComponentGreen,
                                          shape: const CircleBorder(),
                                          fixedSize: const Size(80, 80)),
                                      child: const Icon(
                                          Icons.chevron_right_rounded),
                                      onPressed: () {},
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16, horizontal: 20),
                                        primary: colorComponentRed,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        elevation: 2,
                                      ),
                                      child: Text(
                                        "Lewati",
                                        style: gFontInterWhiteRegular.copyWith(
                                            fontSize: 14),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Antrian anda",
                                style: gFontInterGrayRegular.copyWith(
                                    fontSize: 14),
                              ),
                              Text(
                                "3",
                                style: gFontInterBlackMedium.copyWith(
                                    fontSize: 14),
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
                                style: gFontInterGrayRegular.copyWith(
                                    fontSize: 14),
                              ),
                              Text(
                                "1",
                                style: gFontInterBlackMedium.copyWith(
                                    fontSize: 14),
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
                                style: gFontInterGrayRegular.copyWith(
                                    fontSize: 14),
                              ),
                              Text(
                                "30",
                                style: gFontInterBlackMedium.copyWith(
                                    fontSize: 14),
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
                                style: gFontInterGrayRegular.copyWith(
                                    fontSize: 14),
                              ),
                              Text(
                                "1 menit",
                                style: gFontInterBlackMedium.copyWith(
                                    fontSize: 14),
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
                                style: gFontInterGrayRegular.copyWith(
                                    fontSize: 14),
                              ),
                              Text(
                                "3 menit lagi",
                                style: gFontInterBlackMedium.copyWith(
                                    fontSize: 14),
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
                                style: gFontInterGrayRegular.copyWith(
                                    fontSize: 14),
                              ),
                              Text(
                                "Balaidesa Banjarejo",
                                style:
                                    gFontInterBlueMedium.copyWith(fontSize: 14),
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
          child: !isMine
                    ? buttonBottom(colorComponentGreen, "Mulai") : buttonBottom(colorComponentRed, "Batalkan antrian")),
    );
  }
}
