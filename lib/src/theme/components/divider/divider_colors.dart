import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDividerColors extends ThemeExtension<BaconDividerColors>
    with DiagnosticableTreeMixin {
  final Color dividerColor;
  final Color textColor;
  final Color iconColor;

  const BaconDividerColors({
    required this.dividerColor,
    required this.textColor,
    required this.iconColor,
  });

  @override
  BaconDividerColors copyWith({
    Color? dividerColor,
    Color? textColor,
    Color? iconColor,
  }) {
    return BaconDividerColors(
      dividerColor: dividerColor ?? this.dividerColor,
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  BaconDividerColors lerp(
      covariant ThemeExtension<BaconDividerColors>? other, double t) {
    if (other is! BaconDividerColors) return this;
    return BaconDividerColors(
      dividerColor: colorsLerp(dividerColor, other.dividerColor, t)!,
      textColor: colorsLerp(textColor, other.textColor, t)!,
      iconColor: colorsLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BaconDividerColors'));
    properties.add(ColorProperty('dividerColor', dividerColor));
    properties.add(ColorProperty('textColor', textColor));
    properties.add(ColorProperty('iconColor', iconColor));
  }
}
