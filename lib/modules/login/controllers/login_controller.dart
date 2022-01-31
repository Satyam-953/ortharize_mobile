import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/modules/splash/controllers/splash_service.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      // text: 'EMAIL',
      icon: Row(
        children: [
          const Icon(
            Icons.check_box_outline_blank,
            color: AppColor.black,
          ),
          Text('EMAIL')
        ],
      ),
    ),
    Tab(
      // text: 'MOBILE',
      icon: Row(
        children: [
          Icon(
            Icons.check_box_outline_blank,
            color: AppColor.black,
          ),
          Text('MOBILE')
        ],
      ),
    ),
    Tab(
      // text: 'OTP',
      icon: Row(
        children: [
          Icon(
            Icons.check_box_outline_blank,
            color: AppColor.black,
          ),
          Text('OTP')
        ],
      ),
    ),
  ];
  RxBool isChecked = false.obs;
  late TabController controller;
  void changeCheBoxValue() {
    isChecked.value = !isChecked.value;
  }

  void loginSuccess() {
    Get.find<SplashService>().loginSuccess();
  }

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
