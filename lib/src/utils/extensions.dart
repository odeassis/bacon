import 'dart:ui';

import 'package:bacon/src/utils/squircle/squircle_border_radius.dart';
import 'package:bacon/src/utils/squircle/squircle_radius.dart';
import 'package:flutter/widgets.dart';

extension BuildContextX on BuildContext {
  /// Whether the dark mode is currently active.
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}

extension BorderRadiusGeometryX on BorderRadiusGeometry {
  /// Returns the BaconSquircleBorderRadius.
  BaconSquircleBorderRadius squircleBorderRadius(BuildContext context) {
    final borderRadius = resolve(Directionality.of(context));

    return BaconSquircleBorderRadius.only(
      topLeft: BaconSquircleRadius(cornerRadius: borderRadius.topLeft.x),
      topRight: BaconSquircleRadius(cornerRadius: borderRadius.topRight.x),
      bottomLeft: BaconSquircleRadius(cornerRadius: borderRadius.bottomLeft.x),
      bottomRight:
          BaconSquircleRadius(cornerRadius: borderRadius.bottomRight.x),
    );
  }
}
