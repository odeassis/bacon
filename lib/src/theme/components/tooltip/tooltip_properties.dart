import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTooltipProperties extends ThemeExtension<BaconTooltipProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final double arrowBaseWidth;
  final double arrowLength;
  final double arrowTipDistance;
  final Duration transitionDuration;
  final Curve transitionCurve;
  final EdgeInsetsGeometry contentPadding;
  final TextStyle textStyle;

  const BaconTooltipProperties({
    required this.borderRadius,
    required this.arrowBaseWidth,
    required this.arrowLength,
    required this.arrowTipDistance,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.contentPadding,
    required this.textStyle,
  });

  @override
  BaconTooltipProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? arrowBaseWidth,
    double? arrowLength,
    double? arrowTipDistance,
    Duration? transitionDuration,
    Curve? transitionCurve,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? textStyle,
  }) {
    return BaconTooltipProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      arrowBaseWidth: arrowBaseWidth ?? this.arrowBaseWidth,
      arrowLength: arrowLength ?? this.arrowLength,
      arrowTipDistance: arrowTipDistance ?? this.arrowTipDistance,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
      contentPadding: contentPadding ?? this.contentPadding,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconTooltipProperties lerp(
      ThemeExtension<BaconTooltipProperties>? other, double t) {
    if (other is! BaconTooltipProperties) return this;

    return BaconTooltipProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      arrowBaseWidth: lerpDouble(arrowBaseWidth, other.arrowBaseWidth, t)!,
      arrowLength: lerpDouble(arrowLength, other.arrowLength, t)!,
      arrowTipDistance:
          lerpDouble(arrowTipDistance, other.arrowTipDistance, t)!,
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      transitionCurve: other.transitionCurve,
      contentPadding:
          EdgeInsetsGeometry.lerp(contentPadding, other.contentPadding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTooltipProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("arrowBaseWidth", arrowBaseWidth))
      ..add(DoubleProperty("arrowLength", arrowLength))
      ..add(DoubleProperty("arrowTipDistance", arrowTipDistance))
      ..add(DiagnosticsProperty<Duration>(
          "transitionDuration", transitionDuration))
      ..add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>(
          "contentPadding", contentPadding))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
