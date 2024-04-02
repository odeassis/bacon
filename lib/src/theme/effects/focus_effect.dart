import 'dart:ui';

import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconFocusEffect extends ThemeExtension<BaconFocusEffect>
    with DiagnosticableTreeMixin {
  /// The color of the focus effect.
  final Color effectColor;

  /// The extent of the focus effect.
  final double effectExtent;

  /// The duration of the focus effect.
  final Duration effectDuration;

  /// The curve of the focus effect.
  final Curve effectCurve;

  const BaconFocusEffect({
    required this.effectColor,
    required this.effectExtent,
    required this.effectDuration,
    required this.effectCurve,
  });

  @override
  BaconFocusEffect copyWith({
    Color? effectColor,
    double? effectExtent,
    Duration? effectDuration,
    Curve? effectCurve,
  }) {
    return BaconFocusEffect(
      effectColor: effectColor ?? this.effectColor,
      effectExtent: effectExtent ?? this.effectExtent,
      effectDuration: effectDuration ?? this.effectDuration,
      effectCurve: effectCurve ?? this.effectCurve,
    );
  }

  @override
  BaconFocusEffect lerp(ThemeExtension<BaconFocusEffect>? other, double t) {
    if (other is! BaconFocusEffect) return this;

    return BaconFocusEffect(
      effectColor: colorsLerp(effectColor, other.effectColor, t)!,
      effectExtent: lerpDouble(effectExtent, other.effectExtent, t)!,
      effectDuration: lerpDuration(effectDuration, other.effectDuration, t),
      effectCurve: other.effectCurve,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconFocusEffects"))
      ..add(ColorProperty("effectColor", effectColor))
      ..add(DoubleProperty("effectExtent", effectExtent))
      ..add(DiagnosticsProperty<Duration>("effectDuration", effectDuration))
      ..add(DiagnosticsProperty<Curve>("effectCurve", effectCurve));
  }
}
