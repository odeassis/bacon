import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveAlertProperties extends ThemeExtension<HiveAlertProperties>
    with DiagnosticableTreeMixin {
  final TextStyle bodyTitleStyle;
  final TextStyle titleTextStyle;
  final TextStyle linkTextStyle;
  final BorderRadiusGeometry borderRadius;
  final double minHeight;
  final double hGap;
  final double vGap;
  final EdgeInsetsGeometry padding;
  final Duration duration;
  final Curve curve;
  final double? iconSize;

  const HiveAlertProperties({
    required this.bodyTitleStyle,
    required this.titleTextStyle,
    required this.linkTextStyle,
    required this.borderRadius,
    required this.minHeight,
    required this.hGap,
    required this.vGap,
    required this.padding,
    required this.duration,
    required this.curve,
    required this.iconSize,
  });

  @override
  HiveAlertProperties copyWith({
    TextStyle? bodyTitleStyle,
    TextStyle? titleTextStyle,
    TextStyle? linkTextStyle,
    BorderRadiusGeometry? borderRadius,
    double? minHeight,
    double? hGap,
    double? vGap,
    EdgeInsetsGeometry? padding,
    Duration? duration,
    Curve? curve,
    double? iconSize,
  }) {
    return HiveAlertProperties(
      bodyTitleStyle: bodyTitleStyle ?? this.bodyTitleStyle,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      linkTextStyle: linkTextStyle ?? this.linkTextStyle,
      borderRadius: borderRadius ?? this.borderRadius,
      minHeight: minHeight ?? this.minHeight,
      hGap: hGap ?? this.hGap,
      vGap: vGap ?? this.vGap,
      padding: padding ?? this.padding,
      duration: duration ?? this.duration,
      curve: curve ?? this.curve,
      iconSize: iconSize ?? this.iconSize,
    );
  }

  @override
  HiveAlertProperties lerp(
      ThemeExtension<HiveAlertProperties>? other, double t) {
    if (other is! HiveAlertProperties) return this;
    return HiveAlertProperties(
      bodyTitleStyle: TextStyle.lerp(bodyTitleStyle, other.bodyTitleStyle, t)!,
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t)!,
      linkTextStyle: TextStyle.lerp(linkTextStyle, other.linkTextStyle, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      minHeight: lerpDouble(minHeight, other.minHeight, t)!,
      hGap: lerpDouble(hGap, other.hGap, t)!,
      vGap: lerpDouble(vGap, other.vGap, t)!,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t)!,
      duration: lerpDuration(duration, other.duration, t),
      curve: other.curve,
      iconSize: lerpDouble(iconSize, other.iconSize, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAlertProperties"));
    properties.add(DiagnosticsProperty('bodyTitleStyle', bodyTitleStyle));
    properties.add(DiagnosticsProperty('titleTextStyle', titleTextStyle));
    properties.add(DiagnosticsProperty('linkTextStyle', linkTextStyle));
    properties.add(DiagnosticsProperty('borderRadius', borderRadius));
    properties.add(DoubleProperty('minHeight', minHeight));
    properties.add(DoubleProperty('hGap', hGap));
    properties.add(DoubleProperty('vGap', vGap));
    properties.add(DiagnosticsProperty('padding', padding));
    properties.add(DiagnosticsProperty('duration', duration));
    properties.add(DiagnosticsProperty('curve', curve));
    properties.add(DoubleProperty('iconSize', iconSize));
  }
}
