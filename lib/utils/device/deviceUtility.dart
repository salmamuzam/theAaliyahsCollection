import 'package:flutter/material.dart';

class AaliyahDeviceUtils {

  static bool isLandscapeOrientation(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > size.height;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height >= size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomNavBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getAppBarHeight() {
    return kToolbarHeight; 
  }
}
