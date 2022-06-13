import 'package:antrian/app/controllers/auth_controller_controller.dart';
import 'package:antrian/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final authController = Get.find<AuthControllerController>();
  final count = 0.obs;
  RxBool isLoading = false.obs;
  login() async {
    isLoading.value = true;
    await authController.login();
    if (authController.isAuth.isTrue) {
      Get.offAndToNamed(Routes.index);
    }else{
      isLoading.value = false;
    }
  }


  @override
  void onClose() {}
}
