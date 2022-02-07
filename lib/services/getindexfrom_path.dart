import 'package:ortharize_mobile/routes/app_pages.dart';

int getDrwaerItemIndex({required String path}) {
  switch (path) {
    case Routes.dashboard:
      return 0;
    case Routes.home:
      return 0;
    case Routes.profilePage:
      return 2;
    case Routes.products:
      return 3;
    case Routes.settings:
      return 4;

    default:
      return 0;
  }
}
