import 'package:flutter/material.dart';

class ScreenUtility {
  static double getScreenHeight(BuildContext context) {
    Orientation currentOrientation = MediaQuery.of(context).orientation;
    if (currentOrientation == Orientation.portrait) {
      return MediaQuery.of(context).size.height;
    } else {
      return MediaQuery.of(context).size.width;
    }
  }

  static bool isTablet(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide > 800;
  }
}

extension PhoneTabSize on double {
  double convertedSize(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return this * (shortestSide < 800 ? 1.0 : 1.5);
  }
}
