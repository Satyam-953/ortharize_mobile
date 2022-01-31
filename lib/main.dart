import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'constants/colors_style.dart';
import 'modules/profile/bindings/profile_binding.dart';
import 'modules/profile/views/profile_view.dart';
import 'modules/splash/controllers/splash_service.dart';
import 'modules/splash/views/splash_view.dart';
import 'routes/app_pages.dart';
import 'services/auth_service.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  runApp(
    GetMaterialApp.router(
      enableLog: true,
//logWriterCallback: localLogWriter, //custom log print
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      // transitionDuration: Get.defaultDurationTransition,
      // defaultGlobalState: Get.defaultGlobalState,

      theme: ThemeData(
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColorDark: AppColor.iconColor1,
        primaryColor: AppColor.iconColor1,
        // unselectedWidgetColor: AppColor.skyBlueColor,
        tabBarTheme: const TabBarTheme(labelColor: AppColor.black),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.headerBackgroundColor,
          // This will be applied to the "back" icon
          iconTheme: IconThemeData(color: AppColor.black),
        ),
      ),
      unknownRoute: GetPage(
        // middlewares: [
        //   //only enter this route when authed
        //   EnsureAuthMiddleware(),
        // ],
        name: Routes.profilePage,
        page: () => const ProfileView(),
        title: 'Profile',
        transition: Transition.size,
        bindings: [ProfileBinding()],
      ),
      title: "Ortharize",
      initialBinding: BindingsBuilder(
        () {
          Get.put(SplashService());
          // Get.putAsync<SplashService>(() async => await SplashService());

          // Get.put(AuthService());
        },
      ),
      getPages: AppPages.routes,
      builder: (context, child) {
        return FutureBuilder<void>(
          key: const ValueKey('init'),
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
  // });
}
