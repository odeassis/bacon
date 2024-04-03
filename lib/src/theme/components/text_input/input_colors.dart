import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTextInputColors extends ThemeExtension<BaconTextInputColors>
    with DiagnosticableTreeMixin {
  final Color helperTextColor;
  final Color errorColor;
  final Color hoverBorderColor;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final Color background;
  final Color textColor;
  final Color focusRing;

  const BaconTextInputColors({
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
  BaconTextInputColors copyWith({
    Color? helperTextColor,
    Color? errorColor,
    Color? hoverBorderColor,
    Color? activeBorderColor,
    Color? inactiveBorderColor,
    Color? background,
    Color? textColor,
    Color? focusRing,
  }) {
    return BaconTextInputColors(
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
  BaconTextInputColors lerp(
      ThemeExtension<BaconTextInputColors>? other, double t) {
    if (other is! BaconTextInputColors) return this;

    return BaconTextInputColors(
      helperTextColor: colorsLerp(helperTextColor, other.helperTextColor, t)!,
      errorColor: colorsLerp(errorColor, other.errorColor, t)!,
      hoverBorderColor:
          colorsLerp(hoverBorderColor, other.hoverBorderColor, t)!,
      activeBorderColor:
          colorsLerp(activeBorderColor, other.activeBorderColor, t)!,
      inactiveBorderColor:
          colorsLerp(inactiveBorderColor, other.inactiveBorderColor, t)!,
      background: colorsLerp(background, other.background, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
      focusRing: colorsLerp(focusRing, other.focusRing, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BaconTextInputColors'))
      ..add(ColorProperty('helperTextColor', helperTextColor))
      ..add(ColorProperty('errorColor', errorColor))
      ..add(ColorProperty('hoverBorderColor', hoverBorderColor))
      ..add(ColorProperty('activeBorderColor', activeBorderColor))
      ..add(ColorProperty('inactiveBorderColor', inactiveBorderColor))
      ..add(ColorProperty('background', background))
      ..add(ColorProperty('textColor', textColor))
      ..add(ColorProperty('focusRing', focusRing));
  }
}
