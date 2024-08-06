import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveMenuItemProperties extends ThemeExtension<HiveMenuItemProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final double verticalGap;

  final double minimumHeight;

  final EdgeInsetsGeometry padding;

  final TextStyle labelTextStyle;

  final TextStyle contentTextStyle;

  const HiveMenuItemProperties({
    required this.borderRadius,
    required this.verticalGap,
    required this.minimumHeight,
    required this.padding,
    required this.labelTextStyle,
    required this.contentTextStyle,
  });

  @override
  HiveMenuItemProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? verticalGap,
    double? minimumHeight,
    EdgeInsetsGeometry? padding,
    TextStyle? labelTextStyle,
    TextStyle? contentTextStyle,
  }) {
    return HiveMenuItemProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      verticalGap: verticalGap ?? this.verticalGap,
      minimumHeight: minimumHeight ?? this.minimumHeight,
      padding: padding ?? this.padding,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      contentTextStyle: contentTextStyle ?? this.contentTextStyle,
    );
  }

  @override
  HiveMenuItemProperties lerp(
      ThemeExtension<HiveMenuItemProperties>? other, double t) {
    if (other is! HiveMenuItemProperties) return this;

    return HiveMenuItemProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      verticalGap: lerpDouble(verticalGap, other.verticalGap, t)!,
      minimumHeight: lerpDouble(minimumHeight, other.minimumHeight, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t)!,
      contentTextStyle:
          TextStyle.lerp(contentTextStyle, other.contentTextStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveMenuItemProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("verticalGap", verticalGap));
    properties.add(DoubleProperty("minimumHeight", minimumHeight));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding));
    properties
        .add(DiagnosticsProperty<TextStyle>("labelTextStyle", labelTextStyle));
    properties.add(
        DiagnosticsProperty<TextStyle>("contentTextStyle", contentTextStyle));
  }
}
