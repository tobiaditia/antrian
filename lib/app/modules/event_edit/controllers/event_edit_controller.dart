import 'package:get/get.dart';

class EventEditController extends GetxController {

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
