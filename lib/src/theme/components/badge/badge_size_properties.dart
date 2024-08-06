import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveBadgeSizeProperties extends ThemeExtension<HiveBadgeSizeProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the BaconTag.
  final BorderRadiusGeometry borderRadius;

  /// The horizontal gap between the leading, label and trailing widgets of the BaconTag.
  final double gap;

  /// The height of the BaconTag.
  final double? height;

  /// The size value of the BaconTag icon.
  final double iconSizeValue;

  /// The padding of the BaconTag.
  final EdgeInsetsGeometry padding;

  /// The text style of the BaconTag.
  final TextStyle textStyle;

  /// The upper case text style of the BaconTag.
  final TextStyle upperCaseTextStyle;

  const HiveBadgeSizeProperties({
    required this.borderRadius,
    required this.gap,
    this.height,
    required this.iconSizeValue,
    required this.padding,
    required this.textStyle,
    required this.upperCaseTextStyle,
  });

  @override
  HiveBadgeSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    double? iconSizeValue,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    TextStyle? upperCaseTextStyle,
  }) {
    return HiveBadgeSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      gap: gap ?? this.gap,
      height: height ?? this.height,
      iconSizeValue: iconSizeValue ?? this.iconSizeValue,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
      upperCaseTextStyle: upperCaseTextStyle ?? this.upperCaseTextStyle,
    );
  }

  @override
  HiveBadgeSizeProperties lerp(
      ThemeExtension<HiveBadgeSizeProperties>? other, double t) {
    if (other is! HiveBadgeSizeProperties) return this;

    return HiveBadgeSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t),
      iconSizeValue: lerpDouble(iconSizeValue, other.iconSizeValue, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
      upperCaseTextStyle:
          TextStyle.lerp(upperCaseTextStyle, other.upperCaseTextStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveBadgeSizeProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("gap", gap));
    properties.add(DoubleProperty("height", height));
    properties.add(DoubleProperty("iconSizeValue", iconSizeValue));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
    properties.add(DiagnosticsProperty<TextStyle>(
        "upperCaseTextStyle", upperCaseTextStyle));
  }
}
