import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/modules/root/views/drawercontroller.dar/drawer_controller.dart';
import 'package:ortharize_mobile/modules/splash/controllers/splash_service.dart';
import '../../../../routes/app_pages.dart';
import 'drawer.dart';

class RootView extends GetView<SplashService> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current!.location ?? 'no location';

// if(title=='/')title=Routes.home
        return Scaffold(body: Obx(() {
          return controller.isLoggedIn.value
              ? Scaffold(
                  onDrawerChanged: (_) {
                    debugPrint('$_');
                    if (_) Get.put(MyDrawerController());
                    // _
                    //     ? Get.put(MyDrawerController())
                    //     : Get.find<MyDrawerController>().ondis();
                  },
                  drawer: const DrawerWidget(),
                  appBar: AppBar(

                  ),
                  body: GetRouterOutlet(
                    initialRoute: Routes.home,
                    anchorRoute: '/',
                  ),
                )
              : GetRouterOutlet(
                  initialRoute: Routes.login,
                  anchorRoute: '/',
                );
        })

            // filterPages: (afterAnchor) {
            //   return afterAnchor.take(1);
            // },

            // return Obx(
            //   () {
            //     var isLoggedIn = controller.auth.isFalse;
            //     return !isLoggedIn
            //         ? GetRouterOutlet(
            // GetRouterOutlet(
            //           initialRoute: Routes.login,
            //           anchorRoute: '/',
            //           // filterPages: (afterAnchor) {
            //           //   return afterAnchor.take(1);
            //           // },
            //         )
            // : GetRouterOutlet(
            //     initialRoute: Routes.home,
            //     anchorRoute: '/',
            //     // filterPages: (afterAnchor) {
            //     //   return afterAnchor.take(1);
            //     // },
            // );
            //     },
            // ),
            );
      },
    );
  }
}
