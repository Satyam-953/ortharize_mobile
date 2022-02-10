import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/images_path.dart';

import '../../../../routes/app_pages.dart';

class MyDrawerController extends GetxController {
  List<String> lileTitle = const [
    'Trip',
    'Vaccination',
    'Country Restrictions',
    'Trip Status',
    'Rewards',
    'Share Location',
    'Message',
    'Travel Status',
    'Profile',
    'Logout'
  ];
  List<String> lileTitleIcons1 = const [
    ImagePath.trip1,
    ImagePath.vaccination1,
    ImagePath.countryrestrictions1,
    ImagePath.tripstatus1,
    ImagePath.rewards, //rewards1
    ImagePath.sharelocation1,
    ImagePath.defaultImage, //message1
    ImagePath.travelstatus1,
    ImagePath.profile1,
    ImagePath.defaultImage //logout1
  ];
  List<String> lileTitleIcons2 = const [
    ImagePath.trip2,
    ImagePath.vaccination2,
    ImagePath.countryrestrictions2,
    ImagePath.tripstatus2,
    ImagePath.rewards, //rewards2
    ImagePath.sharelocation2,
    ImagePath.defaultImage, //message2
    ImagePath.travelstatus2,
    ImagePath.profile2,
    ImagePath.defaultImage
  ];
  List<String> lileTitleRoutes = const [
    Routes.trips,
    ImagePath.vaccination2,
    ImagePath.countryrestrictions2,
    ImagePath.tripstatus2,
    ImagePath.rewards, //rewards2
    ImagePath.sharelocation2,
    ImagePath.defaultImage, //message2
    ImagePath.travelstatus2,
    ImagePath.profile2,
    ImagePath.defaultImage
  ];

  Map<String, List<String>> a = {};
  getListItems() {
    for (final i in lileTitle) {}
  }

  final count = 0.obs;
  index({required int value}) {
    count.value = value;
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  void ondis() {
    super.dispose();
  }
}
