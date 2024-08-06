import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveMenuItemColors extends ThemeExtension<HiveMenuItemColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color contentTextColor;

  final Color labelTextColor;

  final Color iconColor;

  final Color dividerColor;

  const HiveMenuItemColors({
    required this.background,
    required this.iconColor,
    required this.contentTextColor,
    required this.dividerColor,
    required this.labelTextColor,
  });

  @override
  HiveMenuItemColors copyWith({
    Color? background,
    Color? iconColor,
    Color? dividerColor,
    Color? labelTextColor,
    Color? contentTextColor,
  }) {
    return HiveMenuItemColors(
      background: background ?? this.background,
      dividerColor: dividerColor ?? this.dividerColor,
      iconColor: iconColor ?? this.iconColor,
      labelTextColor: labelTextColor ?? this.labelTextColor,
      contentTextColor: contentTextColor ?? this.contentTextColor,
    );
  }

  @override
  HiveMenuItemColors lerp(ThemeExtension<HiveMenuItemColors>? other, double t) {
    if (other is! HiveMenuItemColors) return this;

    return HiveMenuItemColors(
      background: utils.colorsLerp(background, other.background, t)!,
      dividerColor: utils.colorsLerp(dividerColor, other.dividerColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      labelTextColor:
          utils.colorsLerp(labelTextColor, other.labelTextColor, t)!,
      contentTextColor:
          utils.colorsLerp(contentTextColor, other.contentTextColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveMenuItemColors"));
    properties.add(ColorProperty("background", background));
    properties.add(ColorProperty("dividerColor", dividerColor));
    properties.add(ColorProperty("iconColor", iconColor));
    properties.add(ColorProperty("labelTextColor", labelTextColor));
    properties.add(ColorProperty("contentTextColor", contentTextColor));
  }
}
