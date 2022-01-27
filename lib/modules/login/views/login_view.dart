import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../services/auth_service.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () {
                final isLoggedIn = AuthService.to.isLoggedInValue;
                return Text(
                  'You are currently:'
                  ' ${isLoggedIn ? "Logged In" : "Not Logged In"}'
                  "\nIt's impossible to enter this "
                  "route when you are logged in!",
                );
              },
            ),
            MaterialButton(
              child: const Text(
                'Do login !!',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                AuthService.to.login();
                final thenTo = Get.parameters['then'];
                Get.offNamed(thenTo ?? Routes.home);
              },
            ),
          ],
        ),
      ),
    );
  }
}
