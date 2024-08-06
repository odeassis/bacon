import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors_lerp.dart' as utils;

@immutable
class HiveLinearProgressColors extends ThemeExtension<HiveLinearProgressColors>
    with DiagnosticableTreeMixin {
  final Color color;

  final Color textColor;

  final Color backgroundColor;

  const HiveLinearProgressColors({
    required this.color,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  HiveLinearProgressColors copyWith({
    Color? color,
    Color? textColor,
    Color? backgroundColor,
  }) {
    return HiveLinearProgressColors(
      color: color ?? this.color,
      textColor: textColor ?? this.textColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  HiveLinearProgressColors lerp(
      ThemeExtension<HiveLinearProgressColors>? other, double t) {
    if (other is! HiveLinearProgressColors) return this;

    return HiveLinearProgressColors(
      color: utils.colorsLerp(color, other.color, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      backgroundColor:
          utils.colorsLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveLinearProgressColors"));
    properties.add(ColorProperty("color", color));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("backgroundColor", backgroundColor));
  }
}
