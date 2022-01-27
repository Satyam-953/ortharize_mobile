import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';
import 'package:ortharize_mobile/constants/const.dart';
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
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding:
                              EdgeInsets.all(GlobalConstants.spacingvertical1),
                          child: Icon(
                            Icons.close,
                            size: GlobalConstants.subheadingSize,
                          ),
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: GlobalConstants.spacingvertical2,
                            left: GlobalConstants.spacingvertical2),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                            ),
                            SizedBox(
                              width: GlobalConstants.spacingvertical2,
                            ),
                            Text('Drwaer'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: currentIndex == 0
                    ? AppColor.skyBlueColor
                    : AppColor.backgroundColor,
              ),
              title: const Text('Home'),
              onTap: () => myOnTap(page: Routes.home),
            ),
            // _Paths.home + Routes.profilePage
            ListTile(
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('Profile'),
              onTap: () => myOnTap(page: Routes.profilePage),
            ),
            // _Paths.home + _Paths.products
            ListTile(
              leading: const Icon(Icons.account_box_rounded),
              title: const Text('Products'),
              onTap: () => myOnTap(page: Routes.products),
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () => myOnTap(page: Routes.settings),
            ),
            if (AuthService.to.isLoggedInValue)
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
