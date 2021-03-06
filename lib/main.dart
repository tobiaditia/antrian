import 'package:antrian/app/controllers/auth_controller_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authController = Get.put(AuthControllerController(), permanent: true);
  await authController.autoLogin();
  await dotenv.load(fileName: ".env");
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: authController.isAuth.isTrue ? Routes.index : Routes.splash ,
      getPages: AppPages.routes,
    ),
  );
}
