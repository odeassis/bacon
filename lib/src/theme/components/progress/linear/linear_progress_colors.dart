import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors_lerp.dart';

@immutable
class BaconLinearProgressColors
    extends ThemeExtension<BaconLinearProgressColors>
    with DiagnosticableTreeMixin {
  final Color color;

  final Color textColor;

  final Color backgroundColor;

  const BaconLinearProgressColors({
    required this.color,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  BaconLinearProgressColors copyWith({
    Color? color,
    Color? textColor,
    Color? backgroundColor,
  }) {
    return BaconLinearProgressColors(
      color: color ?? this.color,
      textColor: textColor ?? this.textColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  BaconLinearProgressColors lerp(
      ThemeExtension<BaconLinearProgressColors>? other, double t) {
    if (other is! BaconLinearProgressColors) return this;

    return BaconLinearProgressColors(
      color: colorsLerp(color, other.color, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
      backgroundColor: colorsLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconLinearProgressColors"))
      ..add(ColorProperty("color", color))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
