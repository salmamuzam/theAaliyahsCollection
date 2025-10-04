import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';

/// This class is just a place to keep padding styles that I can reuse in my app
/// instead of writing the same padding everywhere.
class AaliyahSpacingStyle {
  
  /// Padding style that gives space around content and also leaves room for the AppBar at the top
  ///
  /// Why I use this:
  /// - top: leaves space so content doesn't go under the AppBar
  /// - left, bottom, right: default spacing so content isn't stuck to the edges
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AaliyahSizes.appBarHeight,   // space at the top equal to my AppBar height
    left: AaliyahSizes.defaultSpace,  // standard spacing from the left edge
    bottom: AaliyahSizes.defaultSpace,// standard spacing from the bottom edge
    right: AaliyahSizes.defaultSpace, // standard spacing from the right edge
  );
}
