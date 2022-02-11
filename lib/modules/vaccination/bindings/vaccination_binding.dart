import 'package:get/get.dart';

import '../controllers/vaccination_controller.dart';

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
class VaccinationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VaccinationController>(() => VaccinationController());
  }
}
