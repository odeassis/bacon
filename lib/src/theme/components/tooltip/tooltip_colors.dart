import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTooltipColors extends ThemeExtension<BaconTooltipColors>
    with DiagnosticableTreeMixin {
  final Color titleColor;
  final Color contentColor;
  final Color iconColor;
  final Color background;

  const BaconTooltipColors({
    required this.titleColor,
    required this.contentColor,
    required this.iconColor,
    required this.background,
  });

  @override
  BaconTooltipColors copyWith({
    Color? titleColor,
    Color? contentColor,
    Color? iconColor,
    Color? background,
  }) {
    return BaconTooltipColors(
      titleColor: titleColor ?? this.titleColor,
      contentColor: contentColor ?? this.contentColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  BaconTooltipColors lerp(ThemeExtension<BaconTooltipColors>? other, double t) {
    if (other is! BaconTooltipColors) return this;

    return BaconTooltipColors(
      titleColor: colorsLerp(titleColor, other.titleColor, t)!,
      contentColor: colorsLerp(contentColor, other.contentColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      background: colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTooltipColors"))
      ..add(ColorProperty("titleColor", titleColor))
      ..add(ColorProperty("contentColor", contentColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("background", background));
  }
}
