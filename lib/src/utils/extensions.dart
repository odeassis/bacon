import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'squircle/squircle_border_radius.dart';
import 'squircle/squircle_radius.dart';

extension BuildContextX on BuildContext {
  /// Whether the dark mode is currently active.
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}

extension BorderRadiusGeometryX on BorderRadiusGeometry {
  /// Returns the HiveSquircleBorderRadius.
  HiveSquircleBorderRadius squircleBorderRadius(BuildContext context) {
    final borderRadius = resolve(Directionality.of(context));

    return HiveSquircleBorderRadius.only(
      topLeft: HiveSquircleRadius(cornerRadius: borderRadius.topLeft.x),
      topRight: HiveSquircleRadius(cornerRadius: borderRadius.topRight.x),
      bottomLeft: HiveSquircleRadius(cornerRadius: borderRadius.bottomLeft.x),
      bottomRight: HiveSquircleRadius(cornerRadius: borderRadius.bottomRight.x),
    );
  }
}
