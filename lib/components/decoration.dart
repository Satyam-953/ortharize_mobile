import 'package:flutter/material.dart';
import 'package:ortharize_mobile/constants/colors_style.dart';

ThemeData getTheme() {
  return ThemeData(
    fontFamily: 'Montserrat',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // primaryColorDark: AppColor.iconColor1,
    primaryColor: AppColor.iconColor1,
    // unselectedWidgetColor: AppColor.skyBlueColor,
    tabBarTheme: const TabBarTheme(labelColor: AppColor.black),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.headerBackgroundColor,
      // This will be applied to the "back" icon
      iconTheme: IconThemeData(color: AppColor.black),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      errorStyle: AppColor.errorFormFieldStyle,
      fillColor: AppColor.white,
      focusedBorder: AppColor.textFormInputBorder,
      errorBorder: AppColor.textFormInputBorder,
      focusedErrorBorder: AppColor.textFormInputBorder,
      enabledBorder: AppColor.textFormInputBorder,
      filled: true,
    ),
  );
}
