import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'text_area_colors.dart';
import 'text_area_properties.dart';

@immutable
class HiveTextAreaTheme extends ThemeExtension<HiveTextAreaTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveTextAreaColors colors;

  final HiveTextAreaProperties properties;

  HiveTextAreaTheme({
    required this.tokens,
    HiveTextAreaColors? colors,
    HiveTextAreaProperties? properties,
  })  : colors = colors ??
            HiveTextAreaColors(
              backgroundColor: tokens.modes.background.primary,
              activeBorderColor: tokens.modes.action.active,
              inactiveBorderColor: tokens.modes.action.disabled,
              errorColor: tokens.modes.alert.danger,
              hoverBorderColor: tokens.modes.action.hoverOnColor,
              textColor: tokens.modes.content.primary,
              helperTextColor: tokens.modes.content.tertiary,
            ),
        properties = properties ??
            HiveTextAreaProperties(
              borderRadius: tokens.shape.radii.surface,
              transitionDuration: tokens.transitions.transitionDuration,
              transitionCurve: tokens.transitions.transitionCurve,
              helperPadding: EdgeInsets.only(top: tokens.scale.padding.sm),
              textPadding: EdgeInsets.all(tokens.scale.padding.sm),
              textStyle: tokens.typography.label.md,
              helperTextStyle: tokens.typography.paragraph.xs,
            );

  @override
  HiveTextAreaTheme copyWith({
    HiveTokens? tokens,
    HiveTextAreaColors? colors,
    HiveTextAreaProperties? properties,
  }) {
    return HiveTextAreaTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  HiveTextAreaTheme lerp(ThemeExtension<HiveTextAreaTheme>? other, double t) {
    if (other is! HiveTextAreaTheme) return this;

    return HiveTextAreaTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveTextAreaTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveTextAreaColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveTextAreaProperties>("properties", properties));
  }
}
