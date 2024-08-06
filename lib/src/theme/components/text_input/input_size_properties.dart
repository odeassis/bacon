import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveTextInputSizeProperties
    extends ThemeExtension<HiveTextInputSizeProperties>
    with DiagnosticableTreeMixin {
  final double gap;
  final double height;
  final double iconSize;
  final TextStyle labelStyle;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;

  const HiveTextInputSizeProperties({
    required this.gap,
    required this.height,
    required this.iconSize,
    required this.labelStyle,
    required this.padding,
    required this.borderRadius,
  });

  @override
  HiveTextInputSizeProperties copyWith({
    double? gap,
    double? height,
    double? iconSize,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
  }) {
    return HiveTextInputSizeProperties(
      gap: gap ?? this.gap,
      height: height ?? this.height,
      iconSize: iconSize ?? this.iconSize,
      labelStyle: labelStyle ?? this.labelStyle,
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  HiveTextInputSizeProperties lerp(
      ThemeExtension<HiveTextInputSizeProperties>? other, double t) {
    if (other is! HiveTextInputSizeProperties) return this;
    return HiveTextInputSizeProperties(
      gap: lerpDouble(gap, other.gap, t)!,
      height: lerpDouble(height, other.height, t)!,
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HiveTextInputSizeProperties'));
    properties.add(DiagnosticsProperty<double>('gap', gap));
    properties.add(DiagnosticsProperty<double>('height', height));
    properties.add(DiagnosticsProperty<double>('iconSize', iconSize));
    properties.add(DiagnosticsProperty<TextStyle>('labelStyle', labelStyle));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        'borderRadius', borderRadius));
  }
}
