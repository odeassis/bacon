import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveButtonSizeProperties extends ThemeExtension<HiveButtonSizeProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the BaconButton.
  final BorderRadiusGeometry borderRadius;

  /// The gap between the leading, label and trailing widgets of the BaconButton.
  final double gap;

  //
  final double height;

  /// The size value of the BaconButton icon.
  final double iconSize;

  /// The padding of the BaconButton.
  final EdgeInsetsGeometry padding;

  /// The text style of the BaconButton.
  final TextStyle textStyle;

  const HiveButtonSizeProperties({
    required this.borderRadius,
    required this.gap,
    required this.height,
    required this.iconSize,
    required this.padding,
    required this.textStyle,
  });

  @override
  HiveButtonSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    double? iconSize,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
  }) {
    return HiveButtonSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      gap: gap ?? this.gap,
      height: height ?? this.height,
      iconSize: iconSize ?? this.iconSize,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveButtonSizeProperties lerp(
      ThemeExtension<HiveButtonSizeProperties>? other, double t) {
    if (other is! HiveButtonSizeProperties) return this;

    return HiveButtonSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t)!,
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveButtonSizeProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("height", height));
    properties.add(DoubleProperty("gap", gap));
    properties.add(DoubleProperty("iconSize", iconSize));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
