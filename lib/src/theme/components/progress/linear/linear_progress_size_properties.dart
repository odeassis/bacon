import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconLinearProgressSizeProperties
    extends ThemeExtension<BaconLinearProgressSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final double progressHeight;

  final double thumbSizeValue;

  final double verticalGap;

  final TextStyle textStyle;

  const BaconLinearProgressSizeProperties({
    required this.borderRadius,
    required this.progressHeight,
    required this.thumbSizeValue,
    required this.verticalGap,
    required this.textStyle,
  });

  @override
  BaconLinearProgressSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? progressHeight,
    double? thumbSizeValue,
    double? verticalGap,
    TextStyle? textStyle,
  }) {
    return BaconLinearProgressSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      progressHeight: progressHeight ?? this.progressHeight,
      thumbSizeValue: thumbSizeValue ?? this.thumbSizeValue,
      verticalGap: verticalGap ?? this.verticalGap,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconLinearProgressSizeProperties lerp(
      ThemeExtension<BaconLinearProgressSizeProperties>? other, double t) {
    if (other is! BaconLinearProgressSizeProperties) return this;

    return BaconLinearProgressSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      progressHeight: lerpDouble(progressHeight, other.progressHeight, t)!,
      thumbSizeValue: lerpDouble(thumbSizeValue, other.thumbSizeValue, t)!,
      verticalGap: lerpDouble(verticalGap, other.verticalGap, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconLinearProgressSizeProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("progressHeight", progressHeight))
      ..add(DoubleProperty("thumbSizeValue", thumbSizeValue))
      ..add(DoubleProperty("verticalGap", verticalGap))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
