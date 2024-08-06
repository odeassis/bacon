import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart' as utils;

@immutable
class HiveHoverEffectTheme extends ThemeExtension<HiveHoverEffectTheme>
    with DiagnosticableTreeMixin {
  /// The color of the primary hover effect.
  final Color primaryHoverColor;

  /// The color of the secondary hover effect.
  final Color secondaryHoverColor;

  /// The duration of the hover effect.
  final Duration hoverDuration;

  /// The curve of the hover effect.
  final Curve hoverCurve;

  const HiveHoverEffectTheme({
    required this.primaryHoverColor,
    required this.secondaryHoverColor,
    required this.hoverDuration,
    required this.hoverCurve,
  });

  @override
  HiveHoverEffectTheme copyWith({
    Color? primaryHoverColor,
    Color? secondaryHoverColor,
    Duration? hoverDuration,
    Curve? hoverCurve,
  }) {
    return HiveHoverEffectTheme(
      primaryHoverColor: primaryHoverColor ?? this.primaryHoverColor,
      secondaryHoverColor: secondaryHoverColor ?? this.secondaryHoverColor,
      hoverDuration: hoverDuration ?? this.hoverDuration,
      hoverCurve: hoverCurve ?? this.hoverCurve,
    );
  }

  @override
  HiveHoverEffectTheme lerp(
      ThemeExtension<HiveHoverEffectTheme>? other, double t) {
    if (other is! HiveHoverEffectTheme) return this;

    return HiveHoverEffectTheme(
      primaryHoverColor:
          utils.colorsLerp(primaryHoverColor, other.primaryHoverColor, t)!,
      secondaryHoverColor:
          utils.colorsLerp(secondaryHoverColor, other.secondaryHoverColor, t)!,
      hoverDuration: lerpDuration(hoverDuration, other.hoverDuration, t),
      hoverCurve: other.hoverCurve,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveHoverEffectThemes"));
    properties.add(ColorProperty("primaryHoverColor", primaryHoverColor));
    properties.add(ColorProperty("secondaryHoverColor", secondaryHoverColor));
    properties
        .add(DiagnosticsProperty<Duration>("hoverDuration", hoverDuration));
    properties.add(DiagnosticsProperty<Curve>("hoverCurve", hoverCurve));
  }
}
