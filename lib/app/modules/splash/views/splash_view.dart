import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAE2EB),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 36,
              ),
              Text(
                'ANTRIAN',
                style: gFontInterGrayBold.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Buat Antrian Jadi Lebih Mudah',
                textAlign: TextAlign.center,
                style: gFontInterBlackBold.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Image.asset(
                    'assets/images/app/splash.png',
                    width: double.infinity,
                    
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              buttonBottom(colorComponentPrimary, "Log in")
            ],
          )),
        ),
      ),
    );
  }
}
