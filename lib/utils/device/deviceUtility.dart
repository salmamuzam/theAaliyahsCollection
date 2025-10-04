import 'package:flutter/material.dart';

/// AaliyahDeviceUtils helps get device and screen information.
/// Useful for responsive UI and layout adjustments.
class AaliyahDeviceUtils {

  /// Returns true if the device is in landscape mode
  static bool isLandscapeOrientation(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > size.height; // width greater than height = landscape
  }

  /// Returns true if the device is in portrait mode
  static bool isPortraitOrientation(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height >= size.width; // height >= width = portrait
  }

  /// Get the full screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Get the full screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Get the device's pixel ratio (density of the screen)
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  /// Get the height of the status bar at the top of the device
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// Get the height of the bottom navigation bar or safe area at the bottom
  static double getBottomNavBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  /// Get the standard AppBar height (default Flutter toolbar height)
  static double getAppBarHeight() {
    return kToolbarHeight; 
  }
}
