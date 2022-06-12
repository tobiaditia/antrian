import 'package:antrian/app/controllers/auth_controller_controller.dart';
import 'package:antrian/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final authController = Get.find<AuthControllerController>();
  login() async {
    await authController.login();
    
    if (authController.isAuth.isTrue) {
      Get.offAndToNamed(Routes.INDEX);
      print(authController.user);
    } else {
      print(authController.user);
    }
  }



  @override
  void onClose() {}
}
