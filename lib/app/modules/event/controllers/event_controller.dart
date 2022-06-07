import 'package:get/get.dart';

class EventController extends GetxController {
  RxList jenisAcara = ['Berlangsung', 'Akan Datang','Riwayat'].obs;
  RxInt selectedChoiceChip = 0.obs;

  @override
  void onClose() {}
}
