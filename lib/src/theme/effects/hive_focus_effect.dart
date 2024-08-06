import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart' as utils;

@immutable
class HiveFocusEffectTheme extends ThemeExtension<HiveFocusEffectTheme>
    with DiagnosticableTreeMixin {
  /// The color of the focus effect.
  final Color effectColor;

  /// The extent of the focus effect.
  final double effectExtent;

  /// The duration of the focus effect.
  final Duration effectDuration;

  /// The curve of the focus effect.
  final Curve effectCurve;

  const HiveFocusEffectTheme({
    required this.effectColor,
    required this.effectExtent,
    required this.effectDuration,
    required this.effectCurve,
  });

  @override
  HiveFocusEffectTheme copyWith({
    Color? effectColor,
    double? effectExtent,
    Duration? effectDuration,
    Curve? effectCurve,
  }) {
    return HiveFocusEffectTheme(
      effectColor: effectColor ?? this.effectColor,
      effectExtent: effectExtent ?? this.effectExtent,
      effectDuration: effectDuration ?? this.effectDuration,
      effectCurve: effectCurve ?? this.effectCurve,
    );
  }

  @override
  HiveFocusEffectTheme lerp(
      ThemeExtension<HiveFocusEffectTheme>? other, double t) {
    if (other is! HiveFocusEffectTheme) return this;

    return HiveFocusEffectTheme(
      effectColor: utils.colorsLerp(effectColor, other.effectColor, t)!,
      effectExtent: lerpDouble(effectExtent, other.effectExtent, t)!,
      effectDuration: lerpDuration(effectDuration, other.effectDuration, t),
      effectCurve: other.effectCurve,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveFocusEffectThemes"));
    properties.add(ColorProperty("effectColor", effectColor));
    properties.add(DoubleProperty("effectExtent", effectExtent));
    properties
        .add(DiagnosticsProperty<Duration>("effectDuration", effectDuration));
    properties.add(DiagnosticsProperty<Curve>("effectCurve", effectCurve));
  }
}
