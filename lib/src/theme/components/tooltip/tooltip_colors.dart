import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveTooltipColors extends ThemeExtension<HiveTooltipColors>
    with DiagnosticableTreeMixin {
  final Color titleColor;
  final Color contentColor;
  final Color iconColor;
  final Color background;

  const HiveTooltipColors({
    required this.titleColor,
    required this.contentColor,
    required this.iconColor,
    required this.background,
  });

  @override
  HiveTooltipColors copyWith({
    Color? titleColor,
    Color? contentColor,
    Color? iconColor,
    Color? background,
  }) {
    return HiveTooltipColors(
      titleColor: titleColor ?? this.titleColor,
      contentColor: contentColor ?? this.contentColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  HiveTooltipColors lerp(ThemeExtension<HiveTooltipColors>? other, double t) {
    if (other is! HiveTooltipColors) return this;

    return HiveTooltipColors(
      titleColor: utils.colorsLerp(titleColor, other.titleColor, t)!,
      contentColor: utils.colorsLerp(contentColor, other.contentColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      background: utils.colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTooltipColors"));
    properties.add(ColorProperty("titleColor", titleColor));
    properties.add(ColorProperty("contentColor", contentColor));
    properties.add(ColorProperty("iconColor", iconColor));
    properties.add(ColorProperty("background", background));
  }
}
