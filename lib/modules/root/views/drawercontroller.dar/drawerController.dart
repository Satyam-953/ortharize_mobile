import 'package:get/get.dart';

class DrawerController extends GetxController {
  final count = 0.obs;
  index({required int value}) {
    count.value = value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
