// ignore_for_file: non_constant_identifier_names

part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  static const initial = _Paths.initial;

  static const home = _Paths.home;

  static const profilePage = _Paths.home + _Paths.profilePage;
  static const settings = _Paths.settings;
  static const dashboard = _Paths.home + _Paths.dashboard;
  static const products = _Paths.home + _Paths.products;
  // static const profilePage = _Paths.profilePage;
  // static const settings = _Paths.settings;
  // static const dashboard = _Paths.dashboard;
  // static const products = _Paths.products;
  static const login = _Paths.login;
  Routes._();
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$login?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
  static String productDetails(String productId) => '$products/$productId';
}

abstract class _Paths {
  static const initial = '/';
  static const home = '/home';
  static const products = '/products';
  static const profilePage = '/profile';
  static const settings = '/settings';
  static const productDetails = '/:productId';
  static const login = '/login';
  static const dashboard = '/dashboard';
}
