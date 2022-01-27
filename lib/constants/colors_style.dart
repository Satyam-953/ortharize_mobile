import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const.dart';

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
  static final skyBlueColorOp = const Color(0xFF09c7e2).withOpacity(3.0);
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
  static const size1 = SizedBox(
    height: GlobalConstants.spacingvertical1,
  );
  static const size2 = SizedBox(
    height: GlobalConstants.spacingvertical2,
  );
  static const size3 = SizedBox(
    height: GlobalConstants.subheadingSize,
  );

  ///TextStyle
  static const TextStyle HeadingStyle1 = TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.w500,
      fontSize: GlobalConstants.textSize2);
  static const TextStyle HeadingStyle2 = TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.w500,
      fontSize: GlobalConstants.textSize2);
  static const TextStyle subHeadingStyle1 = TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.w500,
      fontSize: GlobalConstants.textSize2);
  static const TextStyle subHeadingStyle2 = TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.w400,
      fontSize: GlobalConstants.textSize2);

  static const TextStyle errorFormFieldStyle = TextStyle(
      color: AppColor.iconColor1, fontSize: GlobalConstants.textSize4);

  static const TextStyle whiteTextStyle1 = TextStyle(
      color: AppColor.white,
      fontWeight: FontWeight.w500,
      fontSize: GlobalConstants.textSize2);

  //////////Form Border
  static const InputBorder textFormInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.backgroundColor,
    ),
  );

//////FOrmatter

  static final TextInputFormatter nameFormatter =
      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"));
  static final TextInputFormatter numberFormatter =
      FilteringTextInputFormatter.allow(RegExp("[0-9]"));
  static final TextInputFormatter numberFormatter2 =
      FilteringTextInputFormatter.allow(RegExp("[0-9.]"));
  static final TextInputFormatter numberFormatteronlydigits =
      FilteringTextInputFormatter.digitsOnly;
  static final TextInputFormatter numberLengthFormatter =
      LengthLimitingTextInputFormatter(3);

//////////////
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
