import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/controllers/auth_controller_controller.dart';
import 'package:antrian/app/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  ProfilView({Key? key}) : super(key: key);
  final authController = Get.put(AuthControllerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin, vertical: margin),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          const AssetImage('assets/images/events/event1.jpg'),
                      radius: 30,
                      backgroundColor: colorComponentPrimary,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'William',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: gFontInterBlackBold,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'william@gmail.com',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: gFontInterBlackRegular,
                        ),
                      ],
                    ))
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: colorComponentSecondary,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF979C9E),
                        offset: Offset(
                          0.5,
                          0.5,
                        ),
                        blurRadius: 0,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Ubah Profil',
                      style: gFontInterPrimaryRegular.copyWith(fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                    onTap: () => authController.logout(),
                    child: buttonBottom(colorComponentRed, 'Log out'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
