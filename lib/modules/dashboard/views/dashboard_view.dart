import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors.dart';
import 'package:ortharize_mobile/constants/const.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("\n\nIn a Serrch Function\n\n");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final double itemHeight = (height - kToolbarHeight) / 3.5;
    final double itemWidth = width / 2;

    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: GlobalConstants.spacinghorizontal2,
                      vertical: GlobalConstants.spacinghorizontal2),

                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // crossAxisCount: MediaQuery.of(context).orientation ==
                    //         Orientation.landscape
                    //     ? 3
                    //     : 2,
                    crossAxisCount: 2,
                    crossAxisSpacing: GlobalConstants.spacinghorizontal2,
                    mainAxisSpacing: GlobalConstants.spacingvertical2,
                    // childAspectRatio: (2 / 1),
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return InkWell(
                      onTap: () async {},
                      child: Container(
                        //  height: 160,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          boxShadow: AppColor.tileshadow,
                          // color: HexColor(
                          //     categories[index]
                          //         .colorhaxCode),
                          borderRadius: BorderRadius.circular(
                              GlobalConstants.commonRadius),
                        ),
                        // margin: EdgeInsets.symmetric(
                        //   horizontal: GlobalConstants.commonpadding,
                        // ),
                      ),
                    );
                  },
                ),
              ),
              Text('Time: ${controller.now.value.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
}
