import 'package:antrian/app/controllers/auth_controller_controller.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    
    Get.put(AuthControllerController(), permanent: true);
  }
}
