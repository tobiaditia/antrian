import 'package:get/get.dart';

import '../controllers/event_edit_controller.dart';

class EventEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventEditController>(
      () => EventEditController(),
    );
  }
}
