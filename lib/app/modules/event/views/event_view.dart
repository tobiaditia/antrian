import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/routes/app_pages.dart';
import 'package:antrian/app/widgets/card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  const EventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EventController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Column(
              children: [
                const SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    filled: true,
                    fillColor: const Color(0xFFF2F4F5),
                    prefixIcon:  Icon(Icons.search,color: colorComponentBlack,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(color: colorComponentPrimary)),
                    labelText: 'Cari acara',
                    labelStyle: gFontInterBlackRegular.copyWith(fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(color: Colors.transparent)),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 40,
                  child: Obx(
                    () => ListView(
                      scrollDirection: Axis.horizontal,
                      children: controller.jenisAcara.map((e) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: ChoiceChip(
                            selectedColor: colorComponentSecondary,
                            backgroundColor: colorComponentGray,
                            label: Text(
                              '$e',
                              style: controller.selectedChoiceChip.value ==
                                      controller.jenisAcara.indexOf(e)
                                  ? gFontInterPrimaryRegular.copyWith(
                                      fontSize: 14)
                                  : gFontInterBlackRegular.copyWith(
                                      fontSize: 14),
                            ),
                            selected: controller.selectedChoiceChip.value ==
                                controller.jenisAcara.indexOf(e),
                            onSelected: (bool selected) {
                              if (selected) {
                                controller.selectedChoiceChip.value =
                                    controller.jenisAcara.indexOf(e);
                              }
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                    onTap: () => Get.toNamed(Routes.eventDetail),
                    child: card()),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                    onTap: () => Get.toNamed(Routes.eventEdit), child: card()),
                const SizedBox(
                  height: 12,
                ),
                card(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        elevation: 2,
        onPressed: () => Get.toNamed(Routes.eventAdd),
        backgroundColor: colorComponentPrimary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
