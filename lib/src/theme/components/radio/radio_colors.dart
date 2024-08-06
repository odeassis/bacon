import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveRadioColors extends ThemeExtension<HiveRadioColors>
    with DiagnosticableTreeMixin {
  final Color activeColor;
  final Color inactiveColor;
  final Color textColor;

  const HiveRadioColors({
    required this.activeColor,
    required this.inactiveColor,
    required this.textColor,
  });

  @override
  HiveRadioColors copyWith({
    Color? activeColor,
    Color? inactiveColor,
    Color? textColor,
  }) {
    return HiveRadioColors(
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  HiveRadioColors lerp(ThemeExtension<HiveRadioColors>? other, double t) {
    if (other is! HiveRadioColors) return this;

    return HiveRadioColors(
      activeColor: utils.colorsLerp(activeColor, other.activeColor, t)!,
      inactiveColor: utils.colorsLerp(inactiveColor, other.inactiveColor, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveRadioColors"));
    properties.add(ColorProperty("activeColor", activeColor));
    properties.add(ColorProperty("inactiveColor", inactiveColor));
    properties.add(ColorProperty("textColor", textColor));
  }
}
