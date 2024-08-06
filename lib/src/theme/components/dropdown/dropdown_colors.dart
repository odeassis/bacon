import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveDropdownColors extends ThemeExtension<HiveDropdownColors>
    with DiagnosticableTreeMixin {
  final Color textColor;

  final Color iconColor;

  final Color background;

  const HiveDropdownColors({
    required this.textColor,
    required this.iconColor,
    required this.background,
  });

  @override
  HiveDropdownColors copyWith({
    Color? textColor,
    Color? iconColor,
    Color? background,
  }) {
    return HiveDropdownColors(
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      background: background ?? this.background,
    );
  }

  @override
  HiveDropdownColors lerp(ThemeExtension<HiveDropdownColors>? other, double t) {
    if (other is! HiveDropdownColors) return this;

    return HiveDropdownColors(
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
      background: utils.colorsLerp(background, other.background, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "HiveDropdownColors"))
      ..add(ColorProperty("textColor", textColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("background", background));
  }
}
