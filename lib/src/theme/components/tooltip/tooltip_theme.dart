import 'package:bacon/src/theme/components/tooltip/tooltip_colors.dart';
import 'package:bacon/src/theme/components/tooltip/tooltip_properties.dart';
import 'package:bacon/src/theme/components/tooltip/tooltip_shadows.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTooltipTheme extends ThemeExtension<BaconTooltipTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconTooltipColors colors;
  final BaconTooltipProperties properties;
  final BaconTooltipShadows shadows;

  BaconTooltipTheme({
    required this.tokens,
    BaconTooltipColors? colors,
    BaconTooltipProperties? properties,
    BaconTooltipShadows? shadows,
  })  : colors = colors ??
            BaconTooltipColors(
              titleColor: tokens.modes.content.inverse,
              contentColor: tokens.modes.content.tertiary,
              iconColor: tokens.modes.content.inverse,
              background: tokens.modes.background.inverse,
            ),
        properties = properties ??
            BaconTooltipProperties(
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
            shadows ?? BaconTooltipShadows(tooltipShadows: tokens.shadows.sm);

  @override
  BaconTooltipTheme copyWith({
    BaconTokens? tokens,
    BaconTooltipColors? colors,
    BaconTooltipProperties? properties,
    BaconTooltipShadows? shadows,
  }) {
    return BaconTooltipTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  BaconTooltipTheme lerp(ThemeExtension<BaconTooltipTheme>? other, double t) {
    if (other is! BaconTooltipTheme) return this;

    return BaconTooltipTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconTooltipTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconTooltipColors>("colors", colors))
      ..add(
          DiagnosticsProperty<BaconTooltipProperties>("properties", properties))
      ..add(DiagnosticsProperty<BaconTooltipShadows>("shadows", shadows));
  }
}
