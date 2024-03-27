import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconAvatarColors extends ThemeExtension<BaconAvatarColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color bodgeColor;
  final Color iconColor;
  final Color textColor;

  const BaconAvatarColors({
    required this.background,
    required this.bodgeColor,
    required this.iconColor,
    required this.textColor,
  });

  @override
  BaconAvatarColors copyWith({
    Color? background,
    Color? bodgeColor,
    Color? iconColor,
    Color? textColor,
  }) {
    return BaconAvatarColors(
      background: background ?? this.background,
      bodgeColor: bodgeColor ?? this.bodgeColor,
      iconColor: iconColor ?? this.iconColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  BaconAvatarColors lerp(
      covariant ThemeExtension<BaconAvatarColors>? other, double t) {
    if (other is! BaconAvatarColors) return this;
    return BaconAvatarColors(
      background: colorsLerp(background, other.background, t)!,
      bodgeColor: colorsLerp(bodgeColor, other.bodgeColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAvatarColors"));
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('bodgeColor', bodgeColor));
    properties.add(ColorProperty('iconColor', iconColor));
    properties.add(ColorProperty('textColor', textColor));
  }
}
