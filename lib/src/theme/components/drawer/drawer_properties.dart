import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDrawerProperties extends ThemeExtension<BaconDrawerProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final double width;

  final TextStyle textStyle;

  const BaconDrawerProperties({
    required this.borderRadius,
    required this.width,
    required this.textStyle,
  });

  @override
  BaconDrawerProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? width,
    TextStyle? textStyle,
  }) {
    return BaconDrawerProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      width: width ?? this.width,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconDrawerProperties lerp(
      ThemeExtension<BaconDrawerProperties>? other, double t) {
    if (other is! BaconDrawerProperties) return this;

    return BaconDrawerProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      width: lerpDouble(width, other.width, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconDrawerProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("width", width))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
