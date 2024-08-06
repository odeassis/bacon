import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveAvatarColors extends ThemeExtension<HiveAvatarColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color bodgeColor;
  final Color iconColor;
  final Color textColor;

  const HiveAvatarColors({
    required this.background,
    required this.bodgeColor,
    required this.iconColor,
    required this.textColor,
  });

  @override
  HiveAvatarColors copyWith({
    Color? background,
    Color? bodgeColor,
    Color? iconColor,
    Color? textColor,
  }) {
    return HiveAvatarColors(
      background: background ?? this.background,
      bodgeColor: bodgeColor ?? this.bodgeColor,
      iconColor: iconColor ?? this.iconColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  HiveAvatarColors lerp(
      covariant ThemeExtension<HiveAvatarColors>? other, double t) {
    if (other is! HiveAvatarColors) return this;
    return HiveAvatarColors(
      background: utils.colorsLerp(background, other.background, t)!,
      bodgeColor: utils.colorsLerp(bodgeColor, other.bodgeColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAvatarColors"));
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('bodgeColor', bodgeColor));
    properties.add(ColorProperty('iconColor', iconColor));
    properties.add(ColorProperty('textColor', textColor));
  }
}
