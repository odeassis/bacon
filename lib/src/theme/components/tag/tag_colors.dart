import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveTagColors extends ThemeExtension<HiveTagColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color textColor;
  final Color iconColor;

  const HiveTagColors({
    required this.textColor,
    required this.iconColor,
    required this.background,
  });

  @override
  HiveTagColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? background,
  }) {
    return HiveTagColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  HiveTagColors lerp(ThemeExtension<HiveTagColors>? other, double t) {
    if (other is! HiveTagColors) return this;

    return HiveTagColors(
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      background: utils.colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTagColors"));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("iconColor", iconColor));
    properties.add(ColorProperty("background", background));
  }
}
