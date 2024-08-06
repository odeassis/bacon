import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveDividerProperties extends ThemeExtension<HiveDividerProperties>
    with DiagnosticableTreeMixin {
  final TextStyle textStyle;
  final double gap;
  final double height;
  final double width;
  final double iconSize;

  const HiveDividerProperties({
    required this.gap,
    required this.height,
    required this.width,
    required this.textStyle,
    required this.iconSize,
  });

  @override
  HiveDividerProperties copyWith({
    double? gap,
    double? height,
    double? width,
    TextStyle? textStyle,
    double? iconSize,
  }) {
    return HiveDividerProperties(
      gap: gap ?? this.gap,
      height: height ?? this.height,
      width: width ?? this.width,
      textStyle: textStyle ?? this.textStyle,
      iconSize: iconSize ?? this.iconSize,
    );
  }

  @override
  HiveDividerProperties lerp(
      ThemeExtension<HiveDividerProperties>? other, double t) {
    if (other is! HiveDividerProperties) return this;
    return HiveDividerProperties(
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t)!,
      width: lerpDouble(width, other.width, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDividerProperties"));
    properties.add(DoubleProperty("gap", gap));
    properties.add(DoubleProperty("height", height));
    properties.add(DoubleProperty("width", width));
    properties.add(DiagnosticsProperty("textStyle", textStyle));
    properties.add(DoubleProperty("iconSize", iconSize));
  }
}
