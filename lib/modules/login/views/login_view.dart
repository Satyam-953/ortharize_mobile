import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/constants/const.dart';
import 'package:ortharize_mobile/modules/login/controllers/login_controller.dart';
// import 'package:ortharize_mobile/modules/root/controllers/root_controller.dart';
import 'package:ortharize_mobile/modules/splash/controllers/splash_service.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// import '../../../../services/auth_service.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final LoginController _tabx = Get.put(LoginController());
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // bool _ischeckbox = false;
  Widget circleTabBarIcon() {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      height: GlobalConstants.textSize2 + 1,
      width: GlobalConstants.textSize2 + 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(GlobalConstants.textSize2),
        color: AppColor.iconColor1,
        border: Border.all(color: AppColor.iconColor1, width: 1),
      ),
      child: const Icon(
        Icons.check,
        color: AppColor.white,
        // controller.isChecked.value ? AppColor.iconColor1 : AppColor.white,
        size: GlobalConstants.textSize2,
      ),
    );
  }

  Widget checkBoxRow() {
    return SizedBox(
        height: 30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            /// CheckBox
            Obx(
              () => InkWell(
                onTap: () {
                  controller.changeCheBoxValue();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppColor.size1,
                    // CheckboxListTile(
                    //   title: Text("title text"),
                    //   value: _ischeckbox,
                    //   onChanged: (newValue) {},
                    //   controlAffinity:
                    //       ListTileControlAffinity.leading, //  <-- leading Checkbox
                    // ),
                    Container(
                      height: GlobalConstants.textSize2,
                      width: GlobalConstants.textSize2,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        border: Border.all(color: AppColor.white),
                      ),
                      child: Icon(
                        Icons.check,
                        color: controller.isChecked.value
                            ? AppColor.iconColor1
                            : AppColor.white,
                        size: GlobalConstants.textSize3,
                      ),
                    ),
                    // Checkbox(value: _ischeckbox, onChanged: (_) {}),
                    const SizedBox(width: GlobalConstants.spacingvertical1),
                    const Text('Remember me')
                  ],
                ),
              ),
            ),

            InkWell(onTap: () {}, child: const Text('Forgot Password'))
          ],
        ));
  }

  Widget loginEmail() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: AppColor.skyBlueColor1,
        margin: const EdgeInsets.symmetric(
            vertical: GlobalConstants.spacingvertical2),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppColor.size2,
              const Text(
                'Email',
                style: AppColor.subtitle2,
              ),
              AppColor.size1,
              TextFormField(
                validator: GlobalConstants.myValidator,
                controller: _nameController,
                inputFormatters: [AppColor.nameFormatter], // Only

                decoration: const InputDecoration(
                  hintText: 'Enter email here',
                ),
                onFieldSubmitted: (value) async {
                  if (_formKey.currentState!.validate()) {
                    // SplashService.to.login();
                    // Get.find<SplashService>().isLoggedIn.value = true;
                    // bool _validate =
                    await controller.loginSuccess();
                    // debugPrint('$_validate');
                    // controller.loggedIn();
                  }
                },
              ),
              AppColor.size2,
              const Text(
                'Password',
                style: AppColor.subtitle2,
              ),
              AppColor.size1,
              TextFormField(
                validator: GlobalConstants.myValidator,
                controller: _passController,
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                ),
                onFieldSubmitted: (value) => _formKey.currentState!.validate(),
                // inputFormatters: [], // Only
              ),
              checkBoxRow(),
              AppColor.size2,
              Center(child: loginButton()),
              // Container(
              //   height: 100,
              //   width: 344,
              //   child: const WebView(
              //     initialUrl: 'https://flutter.dev',
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return InkWell(
      onTap: () async {
        if (_formKey.currentState!.validate()) {
          // SplashService.to.login();
          // Get.find<SplashService>().isLoggedIn.value = true;
          // bool _validate =
          await controller.loginSuccess();
          // debugPrint('$_validate');
          // controller.loggedIn();
        }
      },
      child: SizedBox(
        width: 150,
        height: 50,
        child: Card(
          elevation: GlobalConstants.elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(GlobalConstants.textSize1),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.iconColor1,
              borderRadius: BorderRadius.circular(GlobalConstants.textSize1),
            ),
            child: const Center(
              child: Text("LOGIN",
                  textAlign: TextAlign.center, style: AppColor.whiteTextStyle1),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: AppColor.skyBlueColor,
      backgroundColor: AppColor.skyBlueColor1,
      appBar: AppBar(
        centerTitle: true,
        // shadowColor: AppColor.white,
        // foregroundColor: AppColor.white,
        elevation: 0,
        backgroundColor: AppColor.skyBlueColor1,
        toolbarHeight: height * 0.21,
        bottom: TabBar(
          padding: const EdgeInsets.symmetric(
              horizontal: GlobalConstants.spacingvertical2),
          indicatorColor: AppColor.iconColor1,
          controller: _tabx.controller,
          // labelStyle: AppColor.HeadingStyle1,
          // tabs: _tabx.myTabs,
          tabs: [
            Tab(
              // text: 'EMAIL',
              icon: Row(
                children: [
                  circleTabBarIcon(),
                  AppColor.sizewidth1,
                  const Text('EMAIL'),
                ],
              ),
            ),
            Tab(
              // text: 'MOBILE',
              icon: Row(
                children: [
                  circleTabBarIcon(),
                  AppColor.sizewidth1,
                  const Text('MOBILE'),
                ],
              ),
            ),
            Tab(
              // text: 'OTP',
              icon: Row(
                children: [
                  circleTabBarIcon(),
                  AppColor.sizewidth1,
                  const Text('OTP'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: GlobalConstants.spacingvertical2),
        child: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            controller: _tabx.controller,
            children: [
              loginEmail(),
              Text('b'),
              Text('c'),
            ]),
      ),
    );
  }
}
