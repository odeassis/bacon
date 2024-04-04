import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDropdownColors extends ThemeExtension<BaconDropdownColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  final Color background;

  const BaconDropdownColors({
    required this.textColor,
    required this.iconColor,
    required this.background,
  });

  @override
  BaconDropdownColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? background,
  }) {
    return BaconDropdownColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  BaconDropdownColors lerp(
      ThemeExtension<BaconDropdownColors>? other, double t) {
    if (other is! BaconDropdownColors) return this;

    return BaconDropdownColors(
      textColor: colorsLerp(textColor, other.textColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      background: colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconDropdownColors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("background", background));
  }
}
