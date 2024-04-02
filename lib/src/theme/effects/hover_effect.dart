import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconHoverEffect extends ThemeExtension<BaconHoverEffect>
    with DiagnosticableTreeMixin {
  /// The color of the primary hover effect.
  final Color primaryHoverColor;

  /// The color of the secondary hover effect.
  final Color secondaryHoverColor;

  /// The duration of the hover effect.
  final Duration hoverDuration;

  /// The curve of the hover effect.
  final Curve hoverCurve;

  const BaconHoverEffect({
    required this.primaryHoverColor,
    required this.secondaryHoverColor,
    required this.hoverDuration,
    required this.hoverCurve,
  });

  @override
  BaconHoverEffect copyWith({
    Color? primaryHoverColor,
    Color? secondaryHoverColor,
    Duration? hoverDuration,
    Curve? hoverCurve,
  }) {
    return BaconHoverEffect(
      primaryHoverColor: primaryHoverColor ?? this.primaryHoverColor,
      secondaryHoverColor: secondaryHoverColor ?? this.secondaryHoverColor,
      hoverDuration: hoverDuration ?? this.hoverDuration,
      hoverCurve: hoverCurve ?? this.hoverCurve,
    );
  }

  @override
  BaconHoverEffect lerp(ThemeExtension<BaconHoverEffect>? other, double t) {
    if (other is! BaconHoverEffect) return this;

    return BaconHoverEffect(
      primaryHoverColor:
          colorsLerp(primaryHoverColor, other.primaryHoverColor, t)!,
      secondaryHoverColor:
          colorsLerp(secondaryHoverColor, other.secondaryHoverColor, t)!,
      hoverDuration: lerpDuration(hoverDuration, other.hoverDuration, t),
      hoverCurve: other.hoverCurve,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconHoverEffects"))
      ..add(ColorProperty("primaryHoverColor", primaryHoverColor))
      ..add(ColorProperty("secondaryHoverColor", secondaryHoverColor))
      ..add(DiagnosticsProperty<Duration>("hoverDuration", hoverDuration))
      ..add(DiagnosticsProperty<Curve>("hoverCurve", hoverCurve));
  }
}
