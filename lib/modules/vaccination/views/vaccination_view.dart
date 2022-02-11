import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/constants/const.dart';

import '../../../constants/images_path.dart';
import '../controllers/vaccination_controller.dart';

class VaccinationView extends GetView<VaccinationController> {
  const VaccinationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: GlobalConstants.spacingvertical2),
              color: Colors.greenAccent[100],
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.all(GlobalConstants.spacingvertical2),
              child: Text(
                'VARIFIED SUCCESSFULLY',
                style: TextStyle(
                    fontSize: GlobalConstants.spacing3, color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: GlobalConstants.spacingvertical2),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Vaccination',
                      style: AppColor.subtitle1,
                    ),
                    ListTile(
                      // leading: Image.asset(
                      //   ImagePath.vaccinationRoundedWhite,
                      //   height: 30,
                      //   width: 30,
                      // ),
                      title: Text(
                        'Dose 1',
                        style: AppColor.subtitle3,
                      ),
                      subtitle: Text(
                        '20 july 2021',
                        style: AppColor.bodyText1,
                      ),
                      trailing: Container(
                        padding:
                            EdgeInsets.all(GlobalConstants.spacingvertical1),
                        color: AppColor.headerBackgroundColor,
                        child: Text(
                          'View',
                          style: AppColor.subtitle3,
                        ),
                      ),
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListTile(
                      // leading: Image.asset(
                      //   ImagePath.vaccinationRoundedWhite,
                      //   height: 30,
                      //   width: 30,
                      // ),
                      title: Text(
                        'Dose 2',
                        style: AppColor.subtitle3,
                      ),
                      subtitle: Text(
                        '25 September 2021',
                        style: AppColor.bodyText1,
                      ),
                      trailing: Container(
                        padding:
                            EdgeInsets.all(GlobalConstants.spacingvertical1),
                        color: AppColor.headerBackgroundColor,
                        child: Text(
                          'View',
                          style: AppColor.subtitle3,
                        ),
                      ),
                    ),
                    Divider(
                      height: 2,
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
