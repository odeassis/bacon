import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconButtonColors extends ThemeExtension<BaconButtonColors>
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

  const BaconButtonColors({
    required this.borderColor,
    required this.textColor,
    required this.background,
    required this.iconColor,
    required this.hoverBackground,
    required this.focusRing,
  });

  @override
  BaconButtonColors copyWith({
    Color? borderColor,
    Color? textColor,
    Color? background,
    Color? iconColor,
    Color? hoverBackground,
    Color? focusRing,
  }) {
    return BaconButtonColors(
      borderColor: borderColor ?? this.borderColor,
      textColor: textColor ?? this.textColor,
      background: background ?? this.background,
      iconColor: iconColor ?? this.iconColor,
      hoverBackground: hoverBackground ?? this.hoverBackground,
      focusRing: focusRing ?? this.focusRing,
    );
  }

  @override
  BaconButtonColors lerp(ThemeExtension<BaconButtonColors>? other, double t) {
    if (other is! BaconButtonColors) return this;

    return BaconButtonColors(
      borderColor: colorsLerp(borderColor, other.borderColor, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
      background: colorsLerp(background, other.background, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      hoverBackground: colorsLerp(hoverBackground, other.hoverBackground, t)!,
      focusRing: colorsLerp(focusRing, other.focusRing, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconButtonColors"))
      ..add(ColorProperty("borderColor", borderColor))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("background", background))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("hoverBackground", hoverBackground))
      ..add(ColorProperty("focusRing", focusRing));
  }
}
