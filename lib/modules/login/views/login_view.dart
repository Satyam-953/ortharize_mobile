import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/constants/const.dart';
import 'package:ortharize_mobile/modules/login/controllers/login_controller.dart';
import 'package:ortharize_mobile/modules/root/controllers/root_controller.dart';

import '../../../../services/auth_service.dart';

class LoginView extends GetView<RootController> {
  LoginView({Key? key}) : super(key: key);
  final LoginController _tabx = Get.put(LoginController());
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _ischeckbox = false;

  Widget checkBoxRow() {
    return SizedBox(
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const [
          /// CheckBox
          SizedBox(height: 20, child: Checkbox(value: false, onChanged: null)),
          SizedBox(width: GlobalConstants.spacingvertical2),
          Text('Remember me')
        ],
      ),
    );
  }

  Widget LoginEmail() {
    return Container(
      color: AppColor.skyBlueColor,
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
              style: AppColor.subHeadingStyle2,
            ),
            AppColor.size1,
            TextFormField(
              validator: GlobalConstants.myValidator,
              controller: _nameController,
              inputFormatters: [AppColor.nameFormatter], // Only

              decoration: const InputDecoration(
                errorStyle: AppColor.errorFormFieldStyle,
                fillColor: AppColor.white,
                focusedBorder: AppColor.textFormInputBorder,
                errorBorder: AppColor.textFormInputBorder,
                focusedErrorBorder: AppColor.textFormInputBorder,
                enabledBorder: AppColor.textFormInputBorder,
                filled: true,
                labelStyle: AppColor.subHeadingStyle1,
                // labelText: 'First Name',
                hintText: 'Enter email here',
              ),
              onFieldSubmitted: (value) => _formKey.currentState!.validate(),
            ),
            AppColor.size3,
            const Text(
              'Password',
              style: AppColor.subHeadingStyle2,
            ),
            AppColor.size1,
            TextFormField(
              validator: GlobalConstants.myValidator,
              controller: _passController,
              decoration: const InputDecoration(
                errorStyle: AppColor.errorFormFieldStyle,
                fillColor: AppColor.white,
                focusedBorder: AppColor.textFormInputBorder,
                errorBorder: AppColor.textFormInputBorder,
                focusedErrorBorder: AppColor.textFormInputBorder,
                enabledBorder: AppColor.textFormInputBorder,
                filled: true,
                // labelStyle: AppColor.subHeadingStyle1,
                // border: OutlineInputBorder(),
                // labelText: 'Last Name',
                hintText: 'Enter Password',
              ),
              onFieldSubmitted: (value) => _formKey.currentState!.validate(),
              // inputFormatters: [], // Only
            ),
            checkBoxRow()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skyBlueColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Obx(
            //   () {
            //     final isLoggedIn = AuthService.to.isLoggedInValue;
            //     return Text(
            //       'You are currently:'
            //       ' ${isLoggedIn ? "Logged In" : "Not Logged In"}'
            //       "\nIt's impossible to enter this "
            //       "route when you are logged in!",
            //     );
            //   },
            // ),
            Container(
              color: AppColor.skyBlueColor,
              height: 400,
              padding: const EdgeInsets.symmetric(
                  horizontal: GlobalConstants.spacingvertical2),
              child: Scaffold(
                backgroundColor: AppColor.skyBlueColor,
                appBar: AppBar(
                  // shadowColor: AppColor.white,
                  // foregroundColor: AppColor.white,
                  elevation: 0,
                  backgroundColor: AppColor.skyBlueColor,
                  toolbarHeight: 0,
                  bottom: TabBar(
                    indicatorColor: AppColor.iconColor1,
                    controller: _tabx.controller,
                    tabs: _tabx.myTabs,
                  ),
                ),
                body: TabBarView(controller: _tabx.controller, children: [
                  LoginEmail(),
                  Text('b'),
                  Text('c'),
                ]),
              ),
            ),
            InkWell(
              onTap: () {
                AuthService.to.login();
                controller.loggedIn();
              },
              child: SizedBox(
                width: 150,
                height: 50,
                child: Card(
                  elevation: GlobalConstants.elevation,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(GlobalConstants.textSize1),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.iconColor1,
                      borderRadius:
                          BorderRadius.circular(GlobalConstants.textSize1),
                    ),
                    child: const Center(
                      child: Text("LOGIN",
                          textAlign: TextAlign.center,
                          style: AppColor.whiteTextStyle1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
