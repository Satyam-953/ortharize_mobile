import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

// class DashboardBinding extends Binding {
//   @override
//   List<Bind> dependencies() {
//     return [
//       Bind.lazyPut<DashboardController>(
//         () => DashboardController(),
//       )
//     ];
//   }
// }
class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
