import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveTextAreaColors extends ThemeExtension<HiveTextAreaColors>
    with DiagnosticableTreeMixin {
  final Color backgroundColor;

  final Color activeBorderColor;

  final Color inactiveBorderColor;

  final Color errorColor;

  final Color hoverBorderColor;

  final Color textColor;

  final Color helperTextColor;

  const HiveTextAreaColors({
    required this.backgroundColor,
    required this.activeBorderColor,
    required this.inactiveBorderColor,
    required this.errorColor,
    required this.hoverBorderColor,
    required this.textColor,
    required this.helperTextColor,
  });

  @override
  HiveTextAreaColors copyWith({
    Color? backgroundColor,
    Color? activeBorderColor,
    Color? inactiveBorderColor,
    Color? errorColor,
    Color? hoverBorderColor,
    Color? textColor,
    Color? helperTextColor,
  }) {
    return HiveTextAreaColors(
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
  HiveTextAreaColors lerp(ThemeExtension<HiveTextAreaColors>? other, double t) {
    if (other is! HiveTextAreaColors) return this;

    return HiveTextAreaColors(
      backgroundColor:
          utils.colorsLerp(backgroundColor, other.backgroundColor, t)!,
      activeBorderColor:
          utils.colorsLerp(activeBorderColor, other.activeBorderColor, t)!,
      inactiveBorderColor:
          utils.colorsLerp(inactiveBorderColor, other.inactiveBorderColor, t)!,
      errorColor: utils.colorsLerp(errorColor, other.errorColor, t)!,
      hoverBorderColor:
          utils.colorsLerp(hoverBorderColor, other.hoverBorderColor, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      helperTextColor:
          utils.colorsLerp(helperTextColor, other.helperTextColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTextAreaColors"));
    properties.add(ColorProperty("backgroundColor", backgroundColor));
    properties.add(ColorProperty("activeBorderColor", activeBorderColor));
    properties.add(ColorProperty("inactiveBorderColor", inactiveBorderColor));
    properties.add(ColorProperty("errorColor", errorColor));
    properties.add(ColorProperty("hoverBorderColor", hoverBorderColor));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("helperTextColor", helperTextColor));
  }
}
