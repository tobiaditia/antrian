import 'package:antrian/app/constants/theme.dart';
import 'package:antrian/app/controllers/auth_controller_controller.dart';
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
                  height: 12,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage(authController.user!.photoUrl.toString()),
                    radius: 40,
                    backgroundColor: colorComponentPrimary,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${authController.user!.displayName}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: gFontInterBlackBold.copyWith(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      authController.user!.email,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: gFontInterBlackRegular,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  thickness: 1,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.place_outlined,
                              size: 24,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Alamat',
                              style:
                                  gFontInterBlackRegular.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.help_outline_rounded,
                              size: 24,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Bantuan',
                              style:
                                  gFontInterBlackRegular.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.g_translate_rounded,
                              size: 24,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Bahasa',
                              style:
                                  gFontInterBlackRegular.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () => authController.logout(),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              size: 24,
                              color: colorComponentRed,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                'Logout',
                                style:
                                    gFontInterRedRegular.copyWith(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
