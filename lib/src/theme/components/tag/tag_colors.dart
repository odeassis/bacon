import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTagColors extends ThemeExtension<BaconTagColors>
    with DiagnosticableTreeMixin {
  final Color background;
  final Color textColor;
  final Color iconColor;

  const BaconTagColors({
    required this.textColor,
    required this.iconColor,
    required this.background,
  });

  @override
  BaconTagColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? background,
  }) {
    return BaconTagColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  BaconTagColors lerp(ThemeExtension<BaconTagColors>? other, double t) {
    if (other is! BaconTagColors) return this;

    return BaconTagColors(
      textColor: colorsLerp(textColor, other.textColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
      background: colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTagColors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("background", background));
  }
}
