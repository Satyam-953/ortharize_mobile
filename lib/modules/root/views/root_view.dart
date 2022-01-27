import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/const.dart';
import 'package:ortharize_mobile/services/auth_service.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/root_controller.dart';
import 'drawer.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current!.location ?? 'no location';

// if(title=='/')title=Routes.home
        return Obx(
          () {
            var isLoggedIn = controller.auth.isFalse;
            return isLoggedIn
                ? GetRouterOutlet(
                    initialRoute: Routes.login,
                    anchorRoute: '/',
                    // filterPages: (afterAnchor) {
                    //   return afterAnchor.take(1);
                    // },
                  )
                : Scaffold(
                    drawer: const DrawerWidget(),
                    appBar: AppBar(
                      title: Text(title),
                      centerTitle: true,
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(
                          GlobalConstants.spacingvertical1),
                      child: GetRouterOutlet(
                        initialRoute: Routes.home,
                        anchorRoute: '/',
                        // filterPages: (afterAnchor) {
                        //   return afterAnchor.take(1);
                        // },
                      ),
                    ),
                  );
          },
        );
      },
    );
  }
}
