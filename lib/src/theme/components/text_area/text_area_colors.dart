import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTextAreaColors extends ThemeExtension<BaconTextAreaColors>
    with DiagnosticableTreeMixin {
  final Color backgroundColor;

  final Color activeBorderColor;

  final Color inactiveBorderColor;

  final Color errorColor;

  final Color hoverBorderColor;

  final Color textColor;

  final Color helperTextColor;

  const BaconTextAreaColors({
    required this.backgroundColor,
    required this.activeBorderColor,
    required this.inactiveBorderColor,
    required this.errorColor,
    required this.hoverBorderColor,
    required this.textColor,
    required this.helperTextColor,
  });

  @override
  BaconTextAreaColors copyWith({
    Color? backgroundColor,
    Color? activeBorderColor,
    Color? inactiveBorderColor,
    Color? errorColor,
    Color? hoverBorderColor,
    Color? textColor,
    Color? helperTextColor,
  }) {
    return BaconTextAreaColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      activeBorderColor: activeBorderColor ?? this.activeBorderColor,
      inactiveBorderColor: inactiveBorderColor ?? this.inactiveBorderColor,
      errorColor: errorColor ?? this.errorColor,
      hoverBorderColor: hoverBorderColor ?? this.hoverBorderColor,
      textColor: textColor ?? this.textColor,
      helperTextColor: helperTextColor ?? this.helperTextColor,
    );
  }

  @override
  BaconTextAreaColors lerp(
      ThemeExtension<BaconTextAreaColors>? other, double t) {
    if (other is! BaconTextAreaColors) return this;

    return BaconTextAreaColors(
      backgroundColor: colorsLerp(backgroundColor, other.backgroundColor, t)!,
      activeBorderColor:
          colorsLerp(activeBorderColor, other.activeBorderColor, t)!,
      inactiveBorderColor:
          colorsLerp(inactiveBorderColor, other.inactiveBorderColor, t)!,
      errorColor: colorsLerp(errorColor, other.errorColor, t)!,
      hoverBorderColor:
          colorsLerp(hoverBorderColor, other.hoverBorderColor, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
      helperTextColor: colorsLerp(helperTextColor, other.helperTextColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTextAreaColors"))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("activeBorderColor", activeBorderColor))
      ..add(ColorProperty("inactiveBorderColor", inactiveBorderColor))
      ..add(ColorProperty("errorColor", errorColor))
      ..add(ColorProperty("hoverBorderColor", hoverBorderColor))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("helperTextColor", helperTextColor));
  }
}
