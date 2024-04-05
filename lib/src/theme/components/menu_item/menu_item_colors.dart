import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconMenuItemColors extends ThemeExtension<BaconMenuItemColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color contentTextColor;

  final Color labelTextColor;

  final Color iconColor;

  final Color dividerColor;

  const BaconMenuItemColors({
    required this.background,
    required this.iconColor,
    required this.contentTextColor,
    required this.dividerColor,
    required this.labelTextColor,
  });

  @override
  BaconMenuItemColors copyWith({
    Color? background,
    Color? iconColor,
    Color? dividerColor,
    Color? labelTextColor,
    Color? contentTextColor,
  }) {
    return BaconMenuItemColors(
      background: background ?? this.background,
      dividerColor: dividerColor ?? this.dividerColor,
      iconColor: iconColor ?? this.iconColor,
      labelTextColor: labelTextColor ?? this.labelTextColor,
      contentTextColor: contentTextColor ?? this.contentTextColor,
    );
  }

  @override
  BaconMenuItemColors lerp(
      ThemeExtension<BaconMenuItemColors>? other, double t) {
    if (other is! BaconMenuItemColors) return this;

    return BaconMenuItemColors(
      background: colorsLerp(background, other.background, t)!,
      dividerColor: colorsLerp(dividerColor, other.dividerColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      labelTextColor: colorsLerp(labelTextColor, other.labelTextColor, t)!,
      contentTextColor:
          colorsLerp(contentTextColor, other.contentTextColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconMenuItemColors"))
      ..add(ColorProperty("background", background))
      ..add(ColorProperty("dividerColor", dividerColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("labelTextColor", labelTextColor))
      ..add(ColorProperty("contentTextColor", contentTextColor));
  }
}
