import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart' as utils;

@immutable
class HiveActionColorsTokens extends ThemeExtension<HiveActionColorsTokens>
    with DiagnosticableTreeMixin {
  final Color active;
  final Color disabled;
  final Color hoverOnColor;
  final Color hoverOnDark;
  final Color focusRingBrand;
  final Color focusRingNeutral;
  final Color focusRingDanger;

  const HiveActionColorsTokens({
    required this.active,
    required this.disabled,
    required this.hoverOnColor,
    required this.hoverOnDark,
    required this.focusRingBrand,
    required this.focusRingNeutral,
    required this.focusRingDanger,
  });

  @override
  HiveActionColorsTokens lerp(
    HiveActionColorsTokens? other,
    double t,
  ) {
    if (other is! HiveActionColorsTokens) return this;
    return HiveActionColorsTokens(
      active: utils.colorsLerp(active, other.active, t)!,
      disabled: utils.colorsLerp(disabled, other.disabled, t)!,
      hoverOnColor: utils.colorsLerp(hoverOnColor, other.hoverOnColor, t)!,
      hoverOnDark: utils.colorsLerp(hoverOnDark, other.hoverOnDark, t)!,
      focusRingBrand:
          utils.colorsLerp(focusRingBrand, other.focusRingBrand, t)!,
      focusRingNeutral:
          utils.colorsLerp(focusRingNeutral, other.focusRingNeutral, t)!,
      focusRingDanger:
          utils.colorsLerp(focusRingDanger, other.focusRingDanger, t)!,
    );
  }

  @override
  HiveActionColorsTokens copyWith({
    Color? active,
    Color? disabled,
    Color? hoverOnColor,
    Color? hoverOnDark,
    Color? focusRingBrand,
    Color? focusRingNeutral,
    Color? focusRingDanger,
  }) {
    return HiveActionColorsTokens(
      active: active ?? this.active,
      disabled: disabled ?? this.disabled,
      hoverOnColor: hoverOnColor ?? this.hoverOnColor,
      hoverOnDark: hoverOnDark ?? this.hoverOnDark,
      focusRingBrand: focusRingBrand ?? this.focusRingBrand,
      focusRingNeutral: focusRingNeutral ?? this.focusRingNeutral,
      focusRingDanger: focusRingDanger ?? this.focusRingDanger,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveActionColorsTokens"));
    properties.add(DiagnosticsProperty<Color>('active', active));
    properties.add(DiagnosticsProperty<Color>('disabled', disabled));
    properties.add(DiagnosticsProperty<Color>('hoverOnColor', hoverOnColor));
    properties.add(DiagnosticsProperty<Color>('hoverOnDark', hoverOnDark));
    properties
        .add(DiagnosticsProperty<Color>('focusRingBrand', focusRingBrand));
    properties
        .add(DiagnosticsProperty<Color>('focusRingNeutral', focusRingNeutral));
    properties
        .add(DiagnosticsProperty<Color>('focusRingDanger', focusRingDanger));
  }
}
