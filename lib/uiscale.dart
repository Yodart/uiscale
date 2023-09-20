library uiscale;

import 'package:flutter/material.dart';

/// A utility class for handling responsive UI scaling in Flutter applications.
class UIScale {
  /// The width of the device's screen in logical pixels.
  static late double deviceWidth;

  /// The height of the device's screen in logical pixels.
  static late double deviceHeight;

  /// The padding information to be applied to the UI components based on device screen properties.
  static late EdgeInsets padding;

  /// Initializes the UIScale class with information about the device's screen.
  ///
  /// This method should be called during the application initialization phase
  /// to set up the necessary scaling parameters.
  static void init(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    deviceWidth = screenSize.width;
    deviceHeight = screenSize.height;

    // Calculate padding based on device screen properties.
    padding = EdgeInsets.only(
      top: MediaQuery.of(context).padding.top > 0 ? MediaQuery.of(context).padding.top : width(5),
      bottom: MediaQuery.of(context).padding.bottom > 0 ? MediaQuery.of(context).padding.bottom : width(5),
      left: MediaQuery.of(context).padding.left,
      right: MediaQuery.of(context).padding.right,
    );
  }

  /// Converts a percentage of the device's width to logical pixels.
  static double width(double percentage) {
    double targetWidth = deviceWidth;
    final double aspectRatio = deviceWidth / deviceHeight;

    // Adjust target width for specific aspect ratio constraints if needed.
    if (aspectRatio < 2.05) {
      targetWidth = deviceHeight / 2.05;
    }

    return targetWidth * (percentage / 100);
  }

  /// Converts a percentage of the device's width to logical pixels without
  /// considering aspect ratio constraints.
  static double trueWidth(double percentage) => deviceWidth * (percentage / 100);

  /// Converts a percentage of the device's height to logical pixels.
  static double height(double percentage) => deviceHeight * (percentage / 100);
}
