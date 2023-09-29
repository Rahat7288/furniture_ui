import 'package:flutter/material.dart';

class SizeConfig {
  static defaultSize(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final Orientation orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return screenHeight * 0.024;
    } else {
      return screenWidth * 0.024;
    }
  }
}
