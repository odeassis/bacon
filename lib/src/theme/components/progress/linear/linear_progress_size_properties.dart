import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveLinearProgressSizeProperties
    extends ThemeExtension<HiveLinearProgressSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final double progressHeight;

  final double thumbSizeValue;

  final double verticalGap;

  final TextStyle textStyle;

  const HiveLinearProgressSizeProperties({
    required this.borderRadius,
    required this.progressHeight,
    required this.thumbSizeValue,
    required this.verticalGap,
    required this.textStyle,
  });

  @override
  HiveLinearProgressSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? progressHeight,
    double? thumbSizeValue,
    double? verticalGap,
    TextStyle? textStyle,
  }) {
    return HiveLinearProgressSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      progressHeight: progressHeight ?? this.progressHeight,
      thumbSizeValue: thumbSizeValue ?? this.thumbSizeValue,
      verticalGap: verticalGap ?? this.verticalGap,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveLinearProgressSizeProperties lerp(
      ThemeExtension<HiveLinearProgressSizeProperties>? other, double t) {
    if (other is! HiveLinearProgressSizeProperties) return this;

    return HiveLinearProgressSizeProperties(
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
        .add(DiagnosticsProperty("type", "HiveLinearProgressSizeProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("progressHeight", progressHeight));
    properties.add(DoubleProperty("thumbSizeValue", thumbSizeValue));
    properties.add(DoubleProperty("verticalGap", verticalGap));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
