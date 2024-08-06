import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors_lerp.dart' as utils;

@immutable
class HiveBottomSheetColors extends ThemeExtension<HiveBottomSheetColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  final Color backgroundColor;

  final Color barrierColor;

  const HiveBottomSheetColors({
    required this.textColor,
    required this.iconColor,
    required this.backgroundColor,
    required this.barrierColor,
  });

  @override
  HiveBottomSheetColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? backgroundColor,
    Color? barrierColor,
  }) {
    return HiveBottomSheetColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      barrierColor: barrierColor ?? this.barrierColor,
    );
  }

  @override
  HiveBottomSheetColors lerp(
      ThemeExtension<HiveBottomSheetColors>? other, double t) {
    if (other is! HiveBottomSheetColors) return this;

    return HiveBottomSheetColors(
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
    properties
      ..add(DiagnosticsProperty("type", "HiveBottomSheetColors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("barrierColor", barrierColor));
  }
}
