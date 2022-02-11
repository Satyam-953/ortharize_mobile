import 'package:get/get.dart';

import '../controllers/trips_controller.dart';

// class ProductsBinding extends Binding {
//   @override
//   List<Bind> dependencies() {
//     return [
//       Bind.lazyPut<ProductsController>(
//         () => ProductsController(),
//       )
//     ];
//   }
// }
class TripsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TripsController>(() => TripsController());
  }
}
