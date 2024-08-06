import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveDrawerProperties extends ThemeExtension<HiveDrawerProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final double width;

  final TextStyle textStyle;

  const HiveDrawerProperties({
    required this.borderRadius,
    required this.width,
    required this.textStyle,
  });

  @override
  HiveDrawerProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? width,
    TextStyle? textStyle,
  }) {
    return HiveDrawerProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      width: width ?? this.width,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveDrawerProperties lerp(
      ThemeExtension<HiveDrawerProperties>? other, double t) {
    if (other is! HiveDrawerProperties) return this;

    return HiveDrawerProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      width: lerpDouble(width, other.width, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDrawerProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("width", width));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
