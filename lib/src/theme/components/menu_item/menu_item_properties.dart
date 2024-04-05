import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconMenuItemProperties extends ThemeExtension<BaconMenuItemProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final double verticalGap;

  final double minimumHeight;

  final EdgeInsetsGeometry padding;

  final TextStyle labelTextStyle;

  final TextStyle contentTextStyle;

  const BaconMenuItemProperties({
    required this.borderRadius,
    required this.verticalGap,
    required this.minimumHeight,
    required this.padding,
    required this.labelTextStyle,
    required this.contentTextStyle,
  });

  @override
  BaconMenuItemProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? verticalGap,
    double? minimumHeight,
    EdgeInsetsGeometry? padding,
    TextStyle? labelTextStyle,
    TextStyle? contentTextStyle,
  }) {
    return BaconMenuItemProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      verticalGap: verticalGap ?? this.verticalGap,
      minimumHeight: minimumHeight ?? this.minimumHeight,
      padding: padding ?? this.padding,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      contentTextStyle: contentTextStyle ?? this.contentTextStyle,
    );
  }

  @override
  BaconMenuItemProperties lerp(
      ThemeExtension<BaconMenuItemProperties>? other, double t) {
    if (other is! BaconMenuItemProperties) return this;

    return BaconMenuItemProperties(
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
    properties
      ..add(DiagnosticsProperty("type", "BaconMenuItemProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("verticalGap", verticalGap))
      ..add(DoubleProperty("minimumHeight", minimumHeight))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>("padding", padding))
      ..add(DiagnosticsProperty<TextStyle>("labelTextStyle", labelTextStyle))
      ..add(
          DiagnosticsProperty<TextStyle>("contentTextStyle", contentTextStyle));
  }
}
