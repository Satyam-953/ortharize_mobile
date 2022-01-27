class GlobalConstants {
  static const double elevation = 4.0;
  static const double spacingvertical1 = 5.0;
  static const double spacingvertical2 = 15.0;
  static const double commonRadius = 5.0;
  static const double headingSize = 64.0;
  static const double subheadingSize = 40.0;
  static const double textSize1 = 20.0;
  static const double textSize2 = 16.0;
  static const double textSize3 = 14.0;
  static const double textSize4 = 12.0;

  static String? myValidator(String? value) {
    if (value == '') {
      return '* Field required';
    }
    return null;
  }
}
