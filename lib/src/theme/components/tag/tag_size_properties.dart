import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveTagSizeProperties extends ThemeExtension<HiveTagSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final double gap;
  final double height;
  final double iconSize;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final TextStyle upperCaseTextStyle;

  const HiveTagSizeProperties({
    required this.borderRadius,
    required this.gap,
    required this.height,
    required this.iconSize,
    required this.padding,
    required this.textStyle,
    required this.upperCaseTextStyle,
  });

  @override
  HiveTagSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    double? iconSize,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    TextStyle? upperCaseTextStyle,
  }) {
    return HiveTagSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      gap: gap ?? this.gap,
      height: height ?? this.height,
      iconSize: iconSize ?? this.iconSize,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
      upperCaseTextStyle: upperCaseTextStyle ?? this.upperCaseTextStyle,
    );
  }

  @override
  HiveTagSizeProperties lerp(
      ThemeExtension<HiveTagSizeProperties>? other, double t) {
    if (other is! HiveTagSizeProperties) return this;

    return HiveTagSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t)!,
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
      upperCaseTextStyle:
          TextStyle.lerp(upperCaseTextStyle, other.upperCaseTextStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTagSizeProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("gap", gap));
    properties.add(DoubleProperty("height", height));
    properties.add(DoubleProperty("iconSize", iconSize));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
    properties.add(DiagnosticsProperty<TextStyle>(
        "upperCaseTextStyle", upperCaseTextStyle));
  }
}
