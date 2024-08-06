import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors_lerp.dart' as utils;

@immutable
class HiveCheckboxColors extends ThemeExtension<HiveCheckboxColors>
    with DiagnosticableTreeMixin {
  final Color activeColor;
  final Color borderColor;
  final Color checkColor;
  final Color inactiveColor;
  final Color textColor;

  const HiveCheckboxColors({
    required this.activeColor,
    required this.borderColor,
    required this.checkColor,
    required this.inactiveColor,
    required this.textColor,
  });

  @override
  HiveCheckboxColors copyWith({
    Color? activeColor,
    Color? borderColor,
    Color? checkColor,
    Color? inactiveColor,
    Color? textColor,
  }) {
    return HiveCheckboxColors(
      activeColor: activeColor ?? this.activeColor,
      borderColor: borderColor ?? this.borderColor,
      checkColor: checkColor ?? this.checkColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  HiveCheckboxColors lerp(ThemeExtension<HiveCheckboxColors>? other, double t) {
    if (other is! HiveCheckboxColors) return this;

    return HiveCheckboxColors(
      activeColor: utils.colorsLerp(activeColor, other.activeColor, t)!,
      borderColor: utils.colorsLerp(borderColor, other.borderColor, t)!,
      checkColor: utils.colorsLerp(checkColor, other.checkColor, t)!,
      inactiveColor: utils.colorsLerp(inactiveColor, other.inactiveColor, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveCheckboxColors"));
    properties.add(ColorProperty("activeColor", activeColor));
    properties.add(ColorProperty("borderColor", borderColor));
    properties.add(ColorProperty("checkColor", checkColor));
    properties.add(ColorProperty("inactiveColor", inactiveColor));
    properties.add(ColorProperty("textColor", textColor));
  }
}
