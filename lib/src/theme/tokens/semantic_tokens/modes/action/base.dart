import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseActionSemanticTokensColors
    extends ThemeExtension<BaconBaseActionSemanticTokensColors>
    with DiagnosticableTreeMixin {
  final Color active;
  final Color disabled;
  final Color hoverOnColor;
  final Color hoverOnDark;
  final Color focusRingBrand;
  final Color focusRingNeutral;
  final Color focusRingDanger;

  const BaconBaseActionSemanticTokensColors({
    required this.active,
    required this.disabled,
    required this.hoverOnColor,
    required this.hoverOnDark,
    required this.focusRingBrand,
    required this.focusRingNeutral,
    required this.focusRingDanger,
  });

  @override
  BaconBaseActionSemanticTokensColors lerp(
    BaconBaseActionSemanticTokensColors? other,
    double t,
  ) {
    if (other is! BaconBaseActionSemanticTokensColors) return this;
    return BaconBaseActionSemanticTokensColors(
      active: colorsLerp(active, other.active, t)!,
      disabled: colorsLerp(disabled, other.disabled, t)!,
      hoverOnColor: colorsLerp(hoverOnColor, other.hoverOnColor, t)!,
      hoverOnDark: colorsLerp(hoverOnDark, other.hoverOnDark, t)!,
      focusRingBrand: colorsLerp(focusRingBrand, other.focusRingBrand, t)!,
      focusRingNeutral:
          colorsLerp(focusRingNeutral, other.focusRingNeutral, t)!,
      focusRingDanger: colorsLerp(focusRingDanger, other.focusRingDanger, t)!,
    );
  }

  @override
  BaconBaseActionSemanticTokensColors copyWith({
    Color? active,
    Color? disabled,
    Color? hoverOnColor,
    Color? hoverOnDark,
    Color? focusRingBrand,
    Color? focusRingNeutral,
    Color? focusRingDanger,
  }) {
    return BaconBaseActionSemanticTokensColors(
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
    properties.add(
        DiagnosticsProperty("type", "BaconBaseActionSemanticTokensColors"));
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
