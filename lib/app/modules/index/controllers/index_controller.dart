import 'package:get/get.dart';

class IndexController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  @override
  void onInit() async {
    super.onInit();
    print('lo');
    Future.delayed(const Duration(seconds: 1), () => {});
  }

  @override
  void onClose() {}
}
