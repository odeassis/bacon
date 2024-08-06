import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveCarouselColors extends ThemeExtension<HiveCarouselColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  const HiveCarouselColors({
    required this.textColor,
    required this.iconColor,
  });

  @override
  HiveCarouselColors copyWith({
    Color? textColor,
    Color? iconColor,
  }) {
    return HiveCarouselColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  HiveCarouselColors lerp(ThemeExtension<HiveCarouselColors>? other, double t) {
    if (other is! HiveCarouselColors) return this;

    return HiveCarouselColors(
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveCarouselColors"));
    properties.add(ColorProperty("textColor", textColor));
    properties.add(ColorProperty("iconColor", iconColor));
  }
}
