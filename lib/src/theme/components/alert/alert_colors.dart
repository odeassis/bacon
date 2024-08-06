import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveAlertComponentColors extends ThemeExtension<HiveAlertComponentColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color textColor;
  final Color borderColor;
  final Color iconColor;

  HiveAlertComponentColors({
    required this.background,
    required this.textColor,
    required this.borderColor,
    required this.iconColor,
  });

  @override
  HiveAlertComponentColors copyWith({
    Color? background,
    Color? textColor,
    Color? borderColor,
    Color? iconColor,
  }) {
    return HiveAlertComponentColors(
      background: background ?? this.background,
      textColor: textColor ?? this.textColor,
      borderColor: borderColor ?? this.borderColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  HiveAlertComponentColors lerp(
      ThemeExtension<HiveAlertComponentColors>? other, double t) {
    if (other is! HiveAlertComponentColors) return this;

    return HiveAlertComponentColors(
      background: utils.colorsLerp(background, other.background, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      borderColor: utils.colorsLerp(borderColor, other.borderColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAlertComponentColors"));
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('textColor', textColor));
    properties.add(ColorProperty('borderColor', borderColor));
    properties.add(ColorProperty('iconColor', iconColor));
  }
}
