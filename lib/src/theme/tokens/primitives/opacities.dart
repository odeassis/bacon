import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveOpacities extends ThemeExtension<HiveOpacities>
    with DiagnosticableTreeMixin {
  static const opacities = HiveOpacities(
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

  const HiveOpacities({
    required this.disabled,
    required this.hoverOnColor,
    required this.hoverOnDark,
    required this.focusRing,
  });

  @override
  HiveOpacities copyWith({
    double? disabled,
    double? hoverOnColor,
    double? hoverOnDark,
    double? focusRing,
  }) {
    return HiveOpacities(
      disabled: disabled ?? this.disabled,
      hoverOnColor: hoverOnColor ?? this.hoverOnColor,
      hoverOnDark: hoverOnDark ?? this.hoverOnDark,
      focusRing: focusRing ?? this.focusRing,
    );
  }

  @override
  HiveOpacities lerp(ThemeExtension<HiveOpacities>? other, double t) {
    if (other is! HiveOpacities) return this;

    return HiveOpacities(
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
      ..add(DiagnosticsProperty("type", "HiveOpacities"))
      ..add(DoubleProperty("disabled", disabled))
      ..add(DoubleProperty("hover", hoverOnColor))
      ..add(DoubleProperty("hoverOnDark", hoverOnDark))
      ..add(DoubleProperty("focusRing", focusRing));
  }
}
