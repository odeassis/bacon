import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTagSizeProperties extends ThemeExtension<BaconTagSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final double gap;
  final double height;
  final double iconSize;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final TextStyle upperCaseTextStyle;

  const BaconTagSizeProperties({
    required this.borderRadius,
    required this.gap,
    required this.height,
    required this.iconSize,
    required this.padding,
    required this.textStyle,
    required this.upperCaseTextStyle,
  });

  @override
  BaconTagSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    double? iconSize,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    TextStyle? upperCaseTextStyle,
  }) {
    return BaconTagSizeProperties(
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
  BaconTagSizeProperties lerp(
      ThemeExtension<BaconTagSizeProperties>? other, double t) {
    if (other is! BaconTagSizeProperties) return this;

    return BaconTagSizeProperties(
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
    properties
      ..add(DiagnosticsProperty("type", "BaconTagSizeProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("gap", gap))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("iconSize", iconSize))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle))
      ..add(DiagnosticsProperty<TextStyle>(
          "upperCaseTextStyle", upperCaseTextStyle));
  }
}
