import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconOpacities extends ThemeExtension<BaconOpacities>
    with DiagnosticableTreeMixin {
  static const opacities = BaconOpacities(
    disabled: 0.5,
    hoverOnColor: 0.08,
    hoverOnDark: 0.08,
    focusRing: 0.24,
  );

  /// The disabled opacity value.
  final double disabled;

  /// The hover opacity value.
  final double hoverOnColor;

  // the hover opacity value on dark background
  final double hoverOnDark;

  // the focus ring opacity value
  final double focusRing;

  const BaconOpacities({
    required this.disabled,
    required this.hoverOnColor,
    required this.hoverOnDark,
    required this.focusRing,
  });

  @override
  BaconOpacities copyWith({
    double? disabled,
    double? hoverOnColor,
    double? hoverOnDark,
    double? focusRing,
  }) {
    return BaconOpacities(
      disabled: disabled ?? this.disabled,
      hoverOnColor: hoverOnColor ?? this.hoverOnColor,
      hoverOnDark: hoverOnDark ?? this.hoverOnDark,
      focusRing: focusRing ?? this.focusRing,
    );
  }

  @override
  BaconOpacities lerp(ThemeExtension<BaconOpacities>? other, double t) {
    if (other is! BaconOpacities) return this;

    return BaconOpacities(
      disabled: lerpDouble(disabled, other.disabled, t)!,
      hoverOnColor: lerpDouble(hoverOnColor, other.hoverOnColor, t)!,
      hoverOnDark: lerpDouble(hoverOnDark, other.hoverOnDark, t)!,
      focusRing: lerpDouble(focusRing, other.focusRing, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconOpacities"))
      ..add(DoubleProperty("disabled", disabled))
      ..add(DoubleProperty("hover", hoverOnColor))
      ..add(DoubleProperty("hoverOnDark", hoverOnDark))
      ..add(DoubleProperty("focusRing", focusRing));
  }
}
