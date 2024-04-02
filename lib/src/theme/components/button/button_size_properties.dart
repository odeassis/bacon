import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconButtonSizeProperties
    extends ThemeExtension<BaconButtonSizeProperties>
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

  const BaconButtonSizeProperties({
    required this.borderRadius,
    required this.gap,
    required this.height,
    required this.iconSize,
    required this.padding,
    required this.textStyle,
  });

  @override
  BaconButtonSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? gap,
    double? height,
    double? iconSize,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
  }) {
    return BaconButtonSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      gap: gap ?? this.gap,
      height: height ?? this.height,
      iconSize: iconSize ?? this.iconSize,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconButtonSizeProperties lerp(
      ThemeExtension<BaconButtonSizeProperties>? other, double t) {
    if (other is! BaconButtonSizeProperties) return this;

    return BaconButtonSizeProperties(
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
    properties
      ..add(DiagnosticsProperty("type", "BaconButtonSizeProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("gap", gap))
      ..add(DoubleProperty("iconSize", iconSize))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
