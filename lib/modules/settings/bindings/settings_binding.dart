import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

// class SettingsBinding extends Binding {
//   @override
//   List<Bind> dependencies() {
//     return [
//       Bind.lazyPut<SettingsController>(
//         () => SettingsController(),
//       )
//     ];
//   }
// }
class SettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
