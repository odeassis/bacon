import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'dropdown_colors.dart';
import 'dropdown_properties.dart';
import 'dropdown_shadows.dart';

@immutable
class HiveDropdownTheme extends ThemeExtension<HiveDropdownTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveDropdownColors colors;
  final HiveDropdownProperties properties;
  final HiveDropdownShadows shadows;

  HiveDropdownTheme({
    required this.tokens,
    HiveDropdownColors? colors,
    HiveDropdownProperties? properties,
    HiveDropdownShadows? shadows,
  })  : colors = colors ??
            HiveDropdownColors(
              textColor: tokens.modes.content.tertiary,
              iconColor: tokens.modes.content.secondary,
              background: tokens.modes.background.primary,
            ),
        properties = properties ??
            HiveDropdownProperties(
              borderRadius: tokens.shape.radii.xs,
              distanceToTarget: tokens.scale.component.x4s,
              transitionDuration: Duration.zero,
              transitionCurve: tokens.transitions.transitionCurve,
              contentPadding: EdgeInsets.all(tokens.scale.padding.sm),
              dropdownMargin: EdgeInsets.all(tokens.scale.gap.sm),
              textStyle: tokens.typography.label.sm,
            ),
        shadows =
            shadows ?? HiveDropdownShadows(dropdownShadows: tokens.shadows.sm);

  @override
  HiveDropdownTheme copyWith({
    HiveTokens? tokens,
    HiveDropdownColors? colors,
    HiveDropdownProperties? properties,
    HiveDropdownShadows? shadows,
  }) {
    return HiveDropdownTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  HiveDropdownTheme lerp(ThemeExtension<HiveDropdownTheme>? other, double t) {
    if (other is! HiveDropdownTheme) return this;

    return HiveDropdownTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveDropdownTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveDropdownColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveDropdownProperties>("properties", properties));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveDropdownShadows>("shadows", shadows));
  }
}
