import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart' as utils;

@immutable
class HiveDividerColors extends ThemeExtension<HiveDividerColors>
    with DiagnosticableTreeMixin {
  final Color dividerColor;
  final Color textColor;
  final Color iconColor;

  const HiveDividerColors({
    required this.dividerColor,
    required this.textColor,
    required this.iconColor,
  });

  @override
  HiveDividerColors copyWith({
    Color? dividerColor,
    Color? textColor,
    Color? iconColor,
  }) {
    return HiveDividerColors(
      dividerColor: dividerColor ?? this.dividerColor,
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  HiveDividerColors lerp(
      covariant ThemeExtension<HiveDividerColors>? other, double t) {
    if (other is! HiveDividerColors) return this;
    return HiveDividerColors(
      dividerColor: utils.colorsLerp(dividerColor, other.dividerColor, t)!,
      textColor: utils.colorsLerp(textColor, other.textColor, t)!,
      iconColor: utils.colorsLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HiveDividerColors'));
    properties.add(ColorProperty('dividerColor', dividerColor));
    properties.add(ColorProperty('textColor', textColor));
    properties.add(ColorProperty('iconColor', iconColor));
  }
}
