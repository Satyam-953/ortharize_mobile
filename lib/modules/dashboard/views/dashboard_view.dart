import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/constants/const.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: controller.dashBoardItemsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // crossAxisCount: MediaQuery.of(context).orientation ==
          //         Orientation.landscape
          //     ? 3
          //     : 2,
          crossAxisCount: 2,
          // crossAxisSpacing: GlobalConstants.spacingvertical2,
          // mainAxisSpacing: GlobalConstants.spacingvertical2,
          // childAspectRatio: (2 / 1),
          childAspectRatio: 0.85,
        ),
        itemBuilder: (
          context,
          index,
        ) {
          return InkWell(
            onTap: () async {},
            child: Container(
              // color: AppColor.iconColor1,
              margin: const EdgeInsets.all(GlobalConstants.textSize4),
              //  height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: GlobalConstants.radius3,
                    minRadius: GlobalConstants.radius1,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        GlobalConstants.spacing3,
                      ),
                      child: Image.asset(
                        controller.dashBoardItemsImagesList[index],
                        fit: BoxFit.contain,
                      ),
                    ),
                    backgroundColor: AppColor
                        .headerBackgroundColor, //AppColor.pink, //.withOpacity(0.2),
                    // radius: GlobalConstants.radius3,
                  ),
                  // Image.asset(ImagePath.defaultImage),
                  AppColor.size2,
                  Text(
                    controller.dashBoardItemsList[index],
                    style: AppColor.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                  AppColor.size2,
                ],
              ),
              decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: AppColor.tileshadow,
                // color: HexColor(
                //     categories[index]
                //         .colorhaxCode),
                borderRadius:
                    BorderRadius.circular(GlobalConstants.spacingvertical2),
              ),
              // margin: EdgeInsets.symmetric(
              //   horizontal: GlobalConstants.commonpadding,
              // ),
            ),
          );
        },
      ),
    );
  }
}
