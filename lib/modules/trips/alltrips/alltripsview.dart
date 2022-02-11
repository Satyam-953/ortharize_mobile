import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/const.dart';
import '../../../constants/colors_style.dart';
import '../../../constants/images_path.dart';
import 'alltripscontroller.dart';

class AllTripsView extends StatelessWidget {
  AllTripsView({Key? key}) : super(key: key);
  final AllTripsController _allTripsController = Get.put(AllTripsController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          for (int i = 0; i < _allTripsController.allTripsList.length; i++)
            Padding(
              padding: const EdgeInsets.only(
                  bottom: GlobalConstants.spacingvertical1),
              child: ExpansionTile(
                  // childrenPadding: EdgeInsets.only(bottom: 10),
                  backgroundColor: Colors.white,
                  collapsedBackgroundColor: AppColor.headerBackgroundColor,
                  iconColor: AppColor.iconColor1,
                  // color
                  title: Text(
                    _allTripsController.allTripsList[i].tripsTitle,
                    style: AppColor.subtitle3,
                  ),
                  subtitle: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      '${_allTripsController.allTripsList[i].startDate}  -  ',
                      style: AppColor.bodyText1,
                    ),
                    Text(_allTripsController.allTripsList[i].endDate,
                        style: AppColor.bodyText1),
                  ]),
                  children: [
                    if (_allTripsController.allTripsList[0].data != null)
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColor.lightMetalColor4)),
                        margin: const EdgeInsets.all(
                            GlobalConstants.spacingvertical2),
                        child: ExpansionTile(
                            // childrenPadding: const EdgeInsets.all(10),
                            backgroundColor: AppColor.lightMetalColor4,
                            collapsedBackgroundColor: AppColor.lightMetalColor4,
                            iconColor: AppColor.iconColor1,
                            leading: CircleAvatar(
                              child: Image.asset(
                                ImagePath.trip,
                                height: 30,
                                width: 30,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            title: Text(
                              'Trip Detail',
                              style: AppColor.subtitle3,
                            ),
                            children: [
                              Wrap(
                                // direction: Axis.vertical,
                                // alignment: WrapAlignment.center,
                                // spacing:8.0,
                                // runAlignment:WrapAlignment.center,
                                // runSpacing: 8.0,
                                // crossAxisAlignment: WrapCrossAlignment.center,
                                // textDirection: TextDirection.rtl,
                                // verticalDirection: VerticalDirection.up,
                                children: <Widget>[
                                  Container(
                                    height: 70,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: GlobalConstants
                                                    .spacingvertical1),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: AppColor
                                                      .lightMetalColor4),
                                            ),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Dectination',
                                                      style:
                                                          AppColor.bodyText1),
                                                  const SizedBox(
                                                    height: GlobalConstants
                                                        .spacingvertical1,
                                                  ),
                                                  Text(
                                                    _allTripsController
                                                        .allTripsList[0]
                                                        .data!
                                                        .destination,
                                                    style:
                                                        AppColor.bodyTextBold1,
                                                  )
                                                ]),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: GlobalConstants
                                                    .spacingvertical2),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: AppColor
                                                      .lightMetalColor4),
                                            ),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Trip Name',
                                                      style:
                                                          AppColor.bodyText1),
                                                  const SizedBox(
                                                    height: GlobalConstants
                                                        .spacingvertical1,
                                                  ),
                                                  Text(
                                                    _allTripsController
                                                        .allTripsList[0]
                                                        .data!
                                                        .tripName,
                                                    style:
                                                        AppColor.bodyTextBold1,
                                                  )
                                                ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                  ]),
            ),
        ],
      ),
    );
  }
}
