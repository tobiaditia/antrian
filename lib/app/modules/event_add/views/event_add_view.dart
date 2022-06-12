import 'package:antrian/app/constants/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_add_controller.dart';

class EventAddView extends GetView<EventAddController> {
  const EventAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Buat acara',
              style: gFontInterBlackRegular.copyWith(fontSize: 16)),
          centerTitle: true,
          leading: BackButton(color: colorComponentBlack),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Simpan',
                style: gFontInterBlueMedium,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      width: double.infinity,
                      height: 140,
                      color: colorComponentSecondary),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: colorComponentPrimary,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          "Gambar",
                          textAlign: TextAlign.center,
                          style:
                              gFontInterPrimaryRegular.copyWith(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: margin, vertical: 30),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentPrimary)),
                        labelText: 'Nama acara',
                        labelStyle:
                            gFontInterBlackRegular.copyWith(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentBorder)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentPrimary)),
                        labelText: 'Waktu',
                        labelStyle:
                            gFontInterBlackRegular.copyWith(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentBorder)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentPrimary)),
                        labelText: 'Kuota',
                        labelStyle:
                            gFontInterBlackRegular.copyWith(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentBorder)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentPrimary)),
                        labelText: 'Deskripsi',
                        labelStyle:
                            gFontInterBlackRegular.copyWith(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentBorder)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentPrimary)),
                        labelText: 'Ketentuan',
                        labelStyle:
                            gFontInterBlackRegular.copyWith(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentBorder)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text("Lokasi",style: gFontInterGrayRegular.copyWith(fontSize: 12),),
                            const SizedBox(height: 8),
                            Text("-",style: gFontInterBlackRegular,),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                              shape: const CircleBorder(),),
                          child: const Icon(
                            Icons.map_outlined
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentPrimary)),
                        labelText: 'Keterangan lokasi',
                        labelStyle:
                            gFontInterBlackRegular.copyWith(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: colorComponentBorder)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
