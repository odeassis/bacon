import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBadgeSizeProperties extends ThemeExtension<BaconBadgeSizeProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the MoonTag.
  final BorderRadiusGeometry borderRadius;

  /// The horizontal gap between the leading, label and trailing widgets of the MoonTag.
  final double gap;

  /// The height of the MoonTag.
  final double height;

  /// The size value of the MoonTag icon.
  final double iconSizeValue;

  /// The padding of the MoonTag.
  final EdgeInsetsGeometry padding;

  /// The text style of the MoonTag.
  final TextStyle textStyle;

  /// The upper case text style of the MoonTag.
  final TextStyle upperCaseTextStyle;

  const BaconBadgeSizeProperties({
    required this.borderRadius,
    required this.gap,
    required this.height,
    required this.iconSizeValue,
    required this.padding,
    required this.textStyle,
    required this.upperCaseTextStyle,
  });

  @override
  BaconBadgeSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    double? iconSizeValue,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    TextStyle? upperCaseTextStyle,
  }) {
    return BaconBadgeSizeProperties(
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
  BaconBadgeSizeProperties lerp(
      ThemeExtension<BaconBadgeSizeProperties>? other, double t) {
    if (other is! BaconBadgeSizeProperties) return this;

    return BaconBadgeSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t)!,
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
    properties
      ..add(DiagnosticsProperty("type", "BaconBadgeSizeProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("gap", gap))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("iconSizeValue", iconSizeValue))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle))
      ..add(DiagnosticsProperty<TextStyle>(
          "upperCaseTextStyle", upperCaseTextStyle));
  }
}
