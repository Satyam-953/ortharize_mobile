import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

// class ProfileBinding extends Binding {
//   @override
//   List<Bind> dependencies() {
//     return [
//       Bind.lazyPut<ProfileController>(
//         () => ProfileController(),
//       )
//     ];
//   }
// }
class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
