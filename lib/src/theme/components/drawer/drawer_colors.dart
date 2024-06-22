import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors_lerp.dart';

@immutable
class BaconDrawerColors extends ThemeExtension<BaconDrawerColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  final Color backgroundColor;

  final Color barrierColor;

  const BaconDrawerColors({
    required this.textColor,
    required this.iconColor,
    required this.backgroundColor,
    required this.barrierColor,
  });

  @override
  BaconDrawerColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? backgroundColor,
    Color? barrierColor,
  }) {
    return BaconDrawerColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      barrierColor: barrierColor ?? this.barrierColor,
    );
  }

  @override
  BaconDrawerColors lerp(ThemeExtension<BaconDrawerColors>? other, double t) {
    if (other is! BaconDrawerColors) return this;

    return BaconDrawerColors(
      textColor: colorsLerp(textColor, other.textColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      backgroundColor: colorsLerp(backgroundColor, other.backgroundColor, t)!,
      barrierColor: colorsLerp(barrierColor, other.barrierColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconDrawerColors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("barrierColor", barrierColor));
  }
}
