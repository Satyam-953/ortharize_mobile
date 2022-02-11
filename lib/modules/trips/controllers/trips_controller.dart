import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TripsController extends GetxController with GetSingleTickerProviderStateMixin {
 // final products = <DemoProduct>[].obs;
  late TabController controller;
  final List<Tab> tripsTabs=const[
    Tab(
      // text: 'MOBILE',
      text: 'UPCOMING TRIPS',
    ),
    Tab(
      // text: 'OTP',
      text: 'ALL TRIPS',
    ),
  ];

  @override
  void onInit() {
    controller = TabController(vsync: this, length: tripsTabs.length);

    super.onInit();
    //  loadDemoProductsFromSomeWhere();
  }
  @override
  void onReady() {
    super.onReady();
    controller.addListener((){
      debugPrint('my index is'+ controller.index.toString());
    });
    //  loadDemoProductsFromSomeWhere();
  }
  @override
  void onClose() {
    Get.printInfo(info: 'Products: onClose');
    super.onClose();
  }
}
