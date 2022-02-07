import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/images_path.dart';

class DashboardController extends GetxController {
  // final now = 0.obs;
  List<String> dashBoardItemsList = const [
    'Trips',
    'Vaccination',
    'Rewards',
    'Trip Status',
    'Travel Status',
    'Country Restrictions '
  ];
  List<String> dashBoardItemsImagesList = const [
    ImagePath.trips,
    ImagePath.vaccination,
    ImagePath.rewards,
    ImagePath.tripstatus,
    ImagePath.travelstatus,
    ImagePath.countryrestrictions1
  ];

  // @override
  // void onReady() {
  //   super.onReady();
  //   // Timer.periodic(
  //   //   const Duration(seconds: 1),
  //   //   (timer) {
  //   //     now.value = DateTime.now();
  //   //   },
  //   // );
  // }
}
