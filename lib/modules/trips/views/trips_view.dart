import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/modules/trips/alltrips/alltripsview.dart';

import '../../../constants/colors_style.dart';
import '../../../constants/const.dart';
import '../controllers/trips_controller.dart';
import '../upcomingtrips/upcomingtripsview.dart';

class TripsView extends GetView<TripsController> {
   const TripsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:    TabBar(
    padding: const EdgeInsets.symmetric(
    horizontal: GlobalConstants.spacingvertical2),
    indicatorColor: AppColor.iconColor1,
    controller: controller.controller,
    // labelStyle: AppColor.HeadingStyle1,
    tabs: controller.tripsTabs,

    // tabs:
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: controller.loadDemoProductsFromSomeWhere,
      //   label: const Text('Add'),
      // ),
    //   body: Column(
    //     children: [
    //       // const Hero(
    //       //   tag: 'heroLogo',
    //       //   child: FlutterLogo(),
    //       // ),
    //       Expanded(
    //         child: Obx(
    //           () => RefreshIndicator(
    //             onRefresh: () async {
    //               controller.products.clear();
    //               controller.loadDemoProductsFromSomeWhere();
    //             },
    //             child: ListView.builder(
    //               itemCount: controller.products.length,
    //               itemBuilder: (context, index) {
    //                 final item = controller.products[index];
    //                 return ListTile(
    //                   onTap: () {
    //                     Get.toNamed(Routes.productDetails(item.id));
    //                   },
    //                   title: Text(item.name),
    //                   subtitle: Text(item.id),
    //                 );
    //               },
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: GlobalConstants.spacingvertical1),
        child: TabBarView(
          // physics: NeverScrollableScrollPhysics(),
            controller: controller.controller,
            children: [
              UpComingTripsView(),
              AllTripsView(),
            ],
        ),
      ),
    );
  }
}
