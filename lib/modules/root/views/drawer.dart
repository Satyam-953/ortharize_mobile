import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/constants/const.dart';
import 'package:ortharize_mobile/constants/images_path.dart';
import 'package:ortharize_mobile/modules/splash/controllers/splash_service.dart';
import 'package:ortharize_mobile/services/auth_service.dart';
import 'package:ortharize_mobile/services/getindexfromPath.dart';

import '../../../../routes/app_pages.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, currentRoute) {
      //This router outlet handles the appbar and the bottom navigation bar
      // final currentLocation = currentRoute?.location ?? Routes.profilePage;
      final currentIndex =
          getDrwaerItemIndex(path: currentRoute?.location ?? Routes.home);
      // if (currentLocation.startsWith(Routes.products) == true) {
      //   currentIndex = 2;
      // }
      // if (currentLocation.startsWith(Routes.profilePage) == true) {
      //   currentIndex = 1;
      // }
      void myOnTap({required String page}) {
        delegate.toNamed(page);
        //to close the drawer

        Navigator.of(context).pop();
      }

      return Drawer(
        child: ListView(
          // mainAxisSize: MainAxisSize.max,
          children: [
            DrawerHeader(
                // padding: EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // const Align(
                      //     alignment: Alignment.topRight,
                      //     child: Padding(
                      //       padding:
                      //           EdgeInsets.all(GlobalConstants.spacingvertical1),
                      //       child: Icon(
                      //         Icons.close,
                      //         size: GlobalConstants.subheadingSize,
                      //       ),
                      //     )),
                      Row(
                        // mainAxisSize: MainAxisSize.max,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            // foregroundColor: Colors.transparent,
                            // backgroundColor: Colors.transparent,
                            foregroundImage: AssetImage(ImagePath.userProfile),
                            radius: GlobalConstants.radius2,
                          ),
                          SizedBox(
                            width: GlobalConstants.spacingvertical2,
                          ),
                          Text(
                            'John Smith',
                            style: AppColor.headline6,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                  color: AppColor.headerBackgroundColor,
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: currentIndex == 0 ? AppColor.iconColor1 : AppColor.black,
              ),
              title: const Text(
                'Home',
                style: AppColor.subtitle2,
              ),
              onTap: () => myOnTap(page: Routes.home),
            ),

            // _Paths.home + _Paths.products
            ListTile(
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('Trip'),
              onTap: () => myOnTap(page: Routes.products),
            ),
            ListTile(
              title: const Text('Vaccination'),
              onTap: () => myOnTap(page: Routes.settings),
            ),
            // _Paths.home + Routes.profilePage
            ListTile(
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('Profile'),
              onTap: () => myOnTap(page: Routes.profilePage),
            ),

            if (SplashService.to.isLoggedInValue)
              ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onTap: () {
                  // AuthService.to.logout();
                  // delegate.offAndToNamed('/');
                  // myOnTap(page: Routes.login);
                },
              ),
            // if (!AuthService.to.isLoggedInValue)
            //   ListTile(
            //     title: const Text(
            //       'Login',
            //       style: TextStyle(
            //         color: Colors.blue,
            //       ),
            //     ),
            //     onTap: () => myOnTap(page: Routes.login),
            //   ),
          ],
        ),
      );
    });
  }
}
