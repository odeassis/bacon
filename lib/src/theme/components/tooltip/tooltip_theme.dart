import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'tooltip_colors.dart';
import 'tooltip_properties.dart';
import 'tooltip_shadows.dart';

@immutable
class HiveTooltipTheme extends ThemeExtension<HiveTooltipTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveTooltipColors colors;
  final HiveTooltipProperties properties;
  final HiveTooltipShadows shadows;

  HiveTooltipTheme({
    required this.tokens,
    HiveTooltipColors? colors,
    HiveTooltipProperties? properties,
    HiveTooltipShadows? shadows,
  })  : colors = colors ??
            HiveTooltipColors(
              titleColor: tokens.modes.content.inverse,
              contentColor: tokens.modes.content.tertiary,
              iconColor: tokens.modes.content.inverse,
              background: tokens.modes.background.inverse,
            ),
        properties = properties ??
            HiveTooltipProperties(
              borderRadius: tokens.shape.radii.x2s,
              arrowBaseWidth: tokens.scale.component.x2s,
              arrowLength: tokens.scale.component.x4s,
              arrowTipDistance: tokens.scale.component.x4s,
              transitionDuration: const Duration(milliseconds: 150),
              transitionCurve: tokens.transitions.transitionCurve,
              contentPadding: EdgeInsets.all(tokens.scale.padding.xs),
              textStyle: tokens.typography.label.xs,
            ),
        shadows =
            shadows ?? HiveTooltipShadows(tooltipShadows: tokens.shadows.sm);

  @override
  HiveTooltipTheme copyWith({
    HiveTokens? tokens,
    HiveTooltipColors? colors,
    HiveTooltipProperties? properties,
    HiveTooltipShadows? shadows,
  }) {
    return HiveTooltipTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  HiveTooltipTheme lerp(ThemeExtension<HiveTooltipTheme>? other, double t) {
    if (other is! HiveTooltipTheme) return this;

    return HiveTooltipTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveTooltipTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveTooltipColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveTooltipProperties>("properties", properties));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveTooltipShadows>("shadows", shadows));
  }
}
