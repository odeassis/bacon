import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconRadioColors extends ThemeExtension<BaconRadioColors>
    with DiagnosticableTreeMixin {
  final Color activeColor;
  final Color inactiveColor;
  final Color textColor;

  const BaconRadioColors({
    required this.activeColor,
    required this.inactiveColor,
    required this.textColor,
  });

  @override
  BaconRadioColors copyWith({
    Color? activeColor,
    Color? inactiveColor,
    Color? textColor,
  }) {
    return BaconRadioColors(
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  BaconRadioColors lerp(ThemeExtension<BaconRadioColors>? other, double t) {
    if (other is! BaconRadioColors) return this;

    return BaconRadioColors(
      activeColor: colorsLerp(activeColor, other.activeColor, t)!,
      inactiveColor: colorsLerp(inactiveColor, other.inactiveColor, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconRadioColors"))
      ..add(ColorProperty("activeColor", activeColor))
      ..add(ColorProperty("inactiveColor", inactiveColor))
      ..add(ColorProperty("textColor", textColor));
  }
}
