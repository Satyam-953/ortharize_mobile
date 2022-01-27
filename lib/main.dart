import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/splash/controllers/splash_service.dart';
import 'modules/splash/views/splash_view.dart';
import 'routes/app_pages.dart';
import 'services/auth_service.dart';

void main() {
  runApp(
    GetMaterialApp.router(
      title: "Ortharize",
      initialBinding: BindingsBuilder(
        () {
          Get.put(SplashService());
          Get.put(AuthService());
        },
      ),
      getPages: AppPages.routes,
      builder: (context, child) {
        return FutureBuilder<void>(
          key: const ValueKey('initFuture'),
          future: Get.find<SplashService>().init(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return child ?? const SizedBox.shrink();
            }
            return const SplashView();
          },
        );
      },
      // routeInformationParser: GetInformationParser(
      //     // initialRoute: Routes.home,
      //     ),
      // routerDelegate: GetDelegate(
      //   backButtonPopMode: PopMode.History,
      //   preventDuplicateHandlingMode:
      //       PreventDuplicateHandlingMode.ReorderRoutes,
      // ),
    ),
  );
}
