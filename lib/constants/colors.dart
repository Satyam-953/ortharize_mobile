import 'package:flutter/material.dart';

abstract class AppColor {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const iconColor1 = Color(0xFF6612E1);
  static const textFieldIconColor = Color(0xFF2b4ad9);
  static const backgroundColor = Color(0xFFf2f3f7);
  static const lightMetalColor2 = Color(0xFF808080);
  static const lightMetalColor3 = Color(0xFFcccccc);
  static const lightMetalColor4 = Color(0xFFF2F2F7);
  static const skyBlueColor = Color(0xFF09c7e2);
  static const skyBlueColor1 = Color(0xFF6d82ec);

  static const bluecolor = Color(0xFF2d4ada);

  static const tileshadow = [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 5.0,
      spreadRadius: 0.0,
      offset: Offset(2.0, 2.0), // shadow direction: bottom right
    )
  ];
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
