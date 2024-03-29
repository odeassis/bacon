import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBadgeColors extends ThemeExtension<BaconBadgeColors>
    with DiagnosticableTreeMixin {
  ///
  final Color textColor;
  final Color iconColor;
  final Color background;

  const BaconBadgeColors({
    required this.textColor,
    required this.iconColor,
    required this.background,
  });

  @override
  BaconBadgeColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? background,
  }) {
    return BaconBadgeColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  BaconBadgeColors lerp(
    ThemeExtension<BaconBadgeColors>? other,
    double t,
  ) {
    if (other is! BaconBadgeColors) return this;

    return BaconBadgeColors(
      textColor: colorsLerp(textColor, other.textColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      background: colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "bacon-badge-colors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("background", background));
  }
}
