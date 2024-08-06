import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors_lerp.dart' as utils;

@immutable
class HiveDrawerColors extends ThemeExtension<HiveDrawerColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  final Color backgroundColor;

  final Color barrierColor;

  const HiveDrawerColors({
    required this.textColor,
    required this.iconColor,
    required this.backgroundColor,
    required this.barrierColor,
  });

  @override
  HiveDrawerColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? backgroundColor,
    Color? barrierColor,
  }) {
    return HiveDrawerColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      barrierColor: barrierColor ?? this.barrierColor,
    );
  }

  @override
  HiveDrawerColors lerp(ThemeExtension<HiveDrawerColors>? other, double t) {
    if (other is! HiveDrawerColors) return this;

    return HiveDrawerColors(
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      backgroundColor:
          utils.colorsLerp(backgroundColor, other.backgroundColor, t)!,
      barrierColor: utils.colorsLerp(barrierColor, other.barrierColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDrawerColors"));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("iconColor", iconColor));
    properties.add(ColorProperty("backgroundColor", backgroundColor));
    properties.add(ColorProperty("barrierColor", barrierColor));
  }
}
