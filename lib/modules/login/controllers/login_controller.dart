import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

///
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/modules/splash/controllers/splash_service.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      // text: 'EMAIL',
      icon: Row(
        children: const [
          Icon(
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
        children: const [
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
        children: const [
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

  Future<bool> loginSuccess() async {
    //  Get.find<SplashService>().loginSuccess();
    bool _status = await getrCatpchaCodeV3();
    try {
      final result = await InternetAddress.lookup('www.google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _status = true;
        debugPrint('InterNaet is on');
      }
    } on SocketException catch (_) {
      _status = false;
      debugPrint('Internet is off');
    }
    return _status;
  }

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    // getrCatpchaCodeV3();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  Future<bool> getrCatpchaCodeV3() async {
    bool _found = false;
    _found = dotenv.env['CAPTCHA_SITE_KEY'] != null ? true : false;
    //  await GRecaptchaV3.ready(tempKey);
    // debugPrint(dotenv.env['CAPTCHA_SITE_KEY']);
    return _found;
  }

  // Future<bool> generateTokenForLogin() async {
  // bool result = false;
  //   // String? token =
  //   await GRecaptchaV3.execute('email').then((token) {
  //     debugPrint('Found Recaptcha');

  //     debugPrint(token);
  //   });
  //   // send token to server and verify
  // }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
