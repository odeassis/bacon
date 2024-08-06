import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveTextInputColors extends ThemeExtension<HiveTextInputColors>
    with DiagnosticableTreeMixin {
  final Color helperTextColor;
  final Color errorColor;
  final Color hoverBorderColor;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final Color background;
  final Color textColor;
  final Color focusRing;

  const HiveTextInputColors({
    required this.helperTextColor,
    required this.errorColor,
    required this.hoverBorderColor,
    required this.activeBorderColor,
    required this.inactiveBorderColor,
    required this.background,
    required this.textColor,
    required this.focusRing,
  });

  @override
  HiveTextInputColors copyWith({
    Color? helperTextColor,
    Color? errorColor,
    Color? hoverBorderColor,
    Color? activeBorderColor,
    Color? inactiveBorderColor,
    Color? background,
    Color? textColor,
    Color? focusRing,
  }) {
    return HiveTextInputColors(
      helperTextColor: helperTextColor ?? this.helperTextColor,
      errorColor: errorColor ?? this.errorColor,
      hoverBorderColor: hoverBorderColor ?? this.hoverBorderColor,
      activeBorderColor: activeBorderColor ?? this.activeBorderColor,
      inactiveBorderColor: inactiveBorderColor ?? this.inactiveBorderColor,
      background: background ?? this.background,
      textColor: textColor ?? this.textColor,
      focusRing: focusRing ?? this.focusRing,
    );
  }

  @override
  HiveTextInputColors lerp(
      ThemeExtension<HiveTextInputColors>? other, double t) {
    if (other is! HiveTextInputColors) return this;

    return HiveTextInputColors(
      helperTextColor:
          utils.colorsLerp(helperTextColor, other.helperTextColor, t)!,
      errorColor: utils.colorsLerp(errorColor, other.errorColor, t)!,
      hoverBorderColor:
          utils.colorsLerp(hoverBorderColor, other.hoverBorderColor, t)!,
      activeBorderColor:
          utils.colorsLerp(activeBorderColor, other.activeBorderColor, t)!,
      inactiveBorderColor:
          utils.colorsLerp(inactiveBorderColor, other.inactiveBorderColor, t)!,
      background: utils.colorsLerp(background, other.background, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      focusRing: utils.colorsLerp(focusRing, other.focusRing, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HiveTextInputColors'));
    properties.add(ColorProperty('helperTextColor', helperTextColor));
    properties.add(ColorProperty('errorColor', errorColor));
    properties.add(ColorProperty('hoverBorderColor', hoverBorderColor));
    properties.add(ColorProperty('activeBorderColor', activeBorderColor));
    properties.add(ColorProperty('inactiveBorderColor', inactiveBorderColor));
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('textColor', textColor));
    properties.add(ColorProperty('focusRing', focusRing));
  }
}
