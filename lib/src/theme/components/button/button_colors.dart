import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveButtonColors extends ThemeExtension<HiveButtonColors>
    with DiagnosticableTreeMixin {
  /// The background color of the BaconButton filled variant.
  final Color background;

  /// The border color of the BaconButton.
  final Color borderColor;

  /// The text color of the BaconButton.
  final Color textColor;

  final Color iconColor;

  final Color hoverBackground;

  final Color focusRing;

  const HiveButtonColors({
    required this.borderColor,
    required this.textColor,
    required this.background,
    required this.iconColor,
    required this.hoverBackground,
    required this.focusRing,
  });

  @override
  HiveButtonColors copyWith({
    Color? borderColor,
    Color? textColor,
    Color? background,
    Color? iconColor,
    Color? hoverBackground,
    Color? focusRing,
  }) {
    return HiveButtonColors(
      borderColor: borderColor ?? this.borderColor,
      textColor: textColor ?? this.textColor,
      background: background ?? this.background,
      iconColor: iconColor ?? this.iconColor,
      hoverBackground: hoverBackground ?? this.hoverBackground,
      focusRing: focusRing ?? this.focusRing,
    );
  }

  @override
  HiveButtonColors lerp(ThemeExtension<HiveButtonColors>? other, double t) {
    if (other is! HiveButtonColors) return this;

    return HiveButtonColors(
      borderColor: utils.colorsLerp(borderColor, other.borderColor, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      background: utils.colorsLerp(background, other.background, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      hoverBackground:
          utils.colorsLerp(hoverBackground, other.hoverBackground, t)!,
      focusRing: utils.colorsLerp(focusRing, other.focusRing, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveButtonColors"));
    properties.add(ColorProperty("borderColor", borderColor));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("background", background));
    properties.add(ColorProperty("iconColor", iconColor));
    properties.add(ColorProperty("hoverBackground", hoverBackground));
    properties.add(ColorProperty("focusRing", focusRing));
  }
}
