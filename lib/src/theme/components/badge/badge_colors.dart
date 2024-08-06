import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveBadgeColors extends ThemeExtension<HiveBadgeColors>
    with DiagnosticableTreeMixin {
  final Color textColor;
  final Color iconColor;
  final Color background;

  const HiveBadgeColors({
    required this.textColor,
    required this.iconColor,
    required this.background,
  });

  @override
  HiveBadgeColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? background,
  }) {
    return HiveBadgeColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  HiveBadgeColors lerp(
    ThemeExtension<HiveBadgeColors>? other,
    double t,
  ) {
    if (other is! HiveBadgeColors) return this;

    return HiveBadgeColors(
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      background: utils.colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "bacon-badge-colors"));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("iconColor", iconColor));
    properties.add(ColorProperty("background", background));
  }
}
