import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart' as utils;

@immutable
class HiveControlEffectTheme extends ThemeExtension<HiveControlEffectTheme>
    with DiagnosticableTreeMixin {
  /// The effect color of the control.
  final Color? effectColor;

  /// The effect duration of the control.
  final Duration effectDuration;

  /// The effect curve of the control.
  final Curve effectCurve;

  /// The effect extent of the control.
  final double? effectExtent;

  /// The effect scalar of the control.
  final double? effectScalar;

  const HiveControlEffectTheme({
    this.effectColor,
    required this.effectDuration,
    required this.effectCurve,
    this.effectExtent,
    this.effectScalar,
  });

  @override
  HiveControlEffectTheme copyWith({
    Color? effectColor,
    Duration? effectDuration,
    Curve? effectCurve,
    double? effectExtent,
    double? effectScalar,
  }) {
    return HiveControlEffectTheme(
      effectColor: effectColor ?? this.effectColor,
      effectDuration: effectDuration ?? this.effectDuration,
      effectCurve: effectCurve ?? this.effectCurve,
      effectExtent: effectExtent ?? this.effectExtent,
      effectScalar: effectScalar ?? this.effectScalar,
    );
  }

  @override
  HiveControlEffectTheme lerp(
      ThemeExtension<HiveControlEffectTheme>? other, double t) {
    if (other is! HiveControlEffectTheme) return this;

    return HiveControlEffectTheme(
      effectColor: utils.colorsLerp(effectColor, other.effectColor, t),
      effectDuration: lerpDuration(effectDuration, other.effectDuration, t),
      effectCurve: other.effectCurve,
      effectExtent: lerpDouble(effectExtent, other.effectExtent, t),
      effectScalar: lerpDouble(effectScalar, other.effectScalar, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconControlsEffects"));
    properties.add(ColorProperty("effectColor", effectColor));
    properties
        .add(DiagnosticsProperty<Duration>("effectDuration", effectDuration));
    properties.add(DiagnosticsProperty<Curve>("effectCurve", effectCurve));
    properties.add(DoubleProperty("effectExtent", effectExtent));
    properties.add(DoubleProperty("effectScalar", effectScalar));
  }
}
