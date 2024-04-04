import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconCheckboxColors extends ThemeExtension<BaconCheckboxColors>
    with DiagnosticableTreeMixin {
  final Color activeColor;
  final Color borderColor;
  final Color checkColor;
  final Color inactiveColor;
  final Color textColor;

  const BaconCheckboxColors({
    required this.activeColor,
    required this.borderColor,
    required this.checkColor,
    required this.inactiveColor,
    required this.textColor,
  });

  @override
  BaconCheckboxColors copyWith({
    Color? activeColor,
    Color? borderColor,
    Color? checkColor,
    Color? inactiveColor,
    Color? textColor,
  }) {
    return BaconCheckboxColors(
      activeColor: activeColor ?? this.activeColor,
      borderColor: borderColor ?? this.borderColor,
      checkColor: checkColor ?? this.checkColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  BaconCheckboxColors lerp(
      ThemeExtension<BaconCheckboxColors>? other, double t) {
    if (other is! BaconCheckboxColors) return this;

    return BaconCheckboxColors(
      activeColor: colorsLerp(activeColor, other.activeColor, t)!,
      borderColor: colorsLerp(borderColor, other.borderColor, t)!,
      checkColor: colorsLerp(checkColor, other.checkColor, t)!,
      inactiveColor: colorsLerp(inactiveColor, other.inactiveColor, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconCheckboxColors"))
      ..add(ColorProperty("activeColor", activeColor))
      ..add(ColorProperty("borderColor", borderColor))
      ..add(ColorProperty("checkColor", checkColor))
      ..add(ColorProperty("inactiveColor", inactiveColor))
      ..add(ColorProperty("textColor", textColor));
  }
}
