import 'package:ortharize_mobile/routes/app_pages.dart';

int getDrwaerItemIndex({required String path}) {
  switch (path) {
    case Routes.dashboard:
      return 0;
    case Routes.home:
      return 0;
    case Routes.trips:
      return 1;
    case Routes.vaccination:
      return 2;
    case Routes.profilePage:
      return 8;
    case Routes.settings:
      return 9;

    default:
      return 0;
  }
}
