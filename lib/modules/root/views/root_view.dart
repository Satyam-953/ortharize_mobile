import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/const.dart';

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
        print('***6**************');
        print(title);
        print('***6**************');
// if(title=='/')title=Routes.home
        return Scaffold(
          drawer: const DrawerWidget(),
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(GlobalConstants.spacinghorizontal1),
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
  }
}
