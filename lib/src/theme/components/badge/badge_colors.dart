import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBadgeColors extends ThemeExtension<BaconBadgeColors>
    with DiagnosticableTreeMixin {
  ///
  final Color textColor;
  final Color iconColor;
  final Color backgroundColor;

  const BaconBadgeColors({
    required this.textColor,
    required this.iconColor,
    required this.backgroundColor,
  });

  @override
  BaconBadgeColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? backgroundColor,
  }) {
    return BaconBadgeColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
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
      backgroundColor: colorsLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "bacon-badge-colors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
