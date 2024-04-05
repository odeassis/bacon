import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconCarouselColors extends ThemeExtension<BaconCarouselColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  const BaconCarouselColors({
    required this.textColor,
    required this.iconColor,
  });

  @override
  BaconCarouselColors copyWith({
    Color? textColor,
    Color? iconColor,
  }) {
    return BaconCarouselColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  BaconCarouselColors lerp(
      ThemeExtension<BaconCarouselColors>? other, double t) {
    if (other is! BaconCarouselColors) return this;

    return BaconCarouselColors(
      textColor: colorsLerp(textColor, other.textColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconCarouselColors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor));
  }
}
