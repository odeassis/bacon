import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveCarouselProperties extends ThemeExtension<HiveCarouselProperties>
    with DiagnosticableTreeMixin {
  final double gap;
  final TextStyle textStyle;
  final Duration autoPlayDelay;
  final Duration transitionDuration;
  final Curve transitionCurve;

  const HiveCarouselProperties({
    required this.gap,
    required this.textStyle,
    required this.autoPlayDelay,
    required this.transitionDuration,
    required this.transitionCurve,
  });

  @override
  HiveCarouselProperties copyWith({
    double? gap,
    TextStyle? textStyle,
    Duration? autoPlayDelay,
    Duration? transitionDuration,
    Curve? transitionCurve,
  }) {
    return HiveCarouselProperties(
      gap: gap ?? this.gap,
      textStyle: textStyle ?? this.textStyle,
      autoPlayDelay: autoPlayDelay ?? this.autoPlayDelay,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
    );
  }

  @override
  HiveCarouselProperties lerp(
      ThemeExtension<HiveCarouselProperties>? other, double t) {
    if (other is! HiveCarouselProperties) return this;

    return HiveCarouselProperties(
      gap: lerpDouble(gap, other.gap, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
      autoPlayDelay: lerpDuration(autoPlayDelay, other.autoPlayDelay, t),
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      transitionCurve: other.transitionCurve,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveCarouselProperties"));
    properties.add(DoubleProperty("gap", gap));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
    properties
        .add(DiagnosticsProperty<Duration>("autoPlayDelay", autoPlayDelay));
    properties.add(DiagnosticsProperty<Duration>(
        "transitionDuration", transitionDuration));
    properties
        .add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve));
  }
}
