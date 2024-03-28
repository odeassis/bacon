import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconAlertColors extends ThemeExtension<BaconAlertColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color textColor;
  final Color borderColor;
  final Color iconColor;

  BaconAlertColors({
    required this.background,
    required this.textColor,
    required this.borderColor,
    required this.iconColor,
  });

  @override
  BaconAlertColors copyWith({
    Color? background,
    Color? textColor,
    Color? borderColor,
    Color? iconColor,
  }) {
    return BaconAlertColors(
      background: background ?? this.background,
      textColor: textColor ?? this.textColor,
      borderColor: borderColor ?? this.borderColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  BaconAlertColors lerp(ThemeExtension<BaconAlertColors>? other, double t) {
    if (other is! BaconAlertColors) return this;

    return BaconAlertColors(
      background: colorsLerp(background, other.background, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
      borderColor: colorsLerp(borderColor, other.borderColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAlertColors"));
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('textColor', textColor));
    properties.add(ColorProperty('borderColor', borderColor));
    properties.add(ColorProperty('iconColor', iconColor));
  }
}
