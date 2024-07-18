import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'text_area_colors.dart';
import 'text_area_properties.dart';

@immutable
class BaconTextAreaTheme extends ThemeExtension<BaconTextAreaTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  final BaconTextAreaColors colors;

  final BaconTextAreaProperties properties;

  BaconTextAreaTheme({
    required this.tokens,
    BaconTextAreaColors? colors,
    BaconTextAreaProperties? properties,
  })  : colors = colors ??
            BaconTextAreaColors(
              backgroundColor: tokens.modes.background.primary,
              activeBorderColor: tokens.modes.action.active,
              inactiveBorderColor: tokens.modes.action.disabled,
              errorColor: tokens.modes.alert.danger,
              hoverBorderColor: tokens.modes.action.hoverOnColor,
              textColor: tokens.modes.content.primary,
              helperTextColor: tokens.modes.content.tertiary,
            ),
        properties = properties ??
            BaconTextAreaProperties(
              borderRadius: tokens.shape.radii.surface,
              transitionDuration: tokens.transitions.transitionDuration,
              transitionCurve: tokens.transitions.transitionCurve,
              helperPadding: EdgeInsets.only(top: tokens.scale.padding.sm),
              textPadding: EdgeInsets.all(tokens.scale.padding.sm),
              textStyle: tokens.typography.label.md,
              helperTextStyle: tokens.typography.paragraph.xs,
            );

  @override
  BaconTextAreaTheme copyWith({
    BaconTokens? tokens,
    BaconTextAreaColors? colors,
    BaconTextAreaProperties? properties,
  }) {
    return BaconTextAreaTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  BaconTextAreaTheme lerp(ThemeExtension<BaconTextAreaTheme>? other, double t) {
    if (other is! BaconTextAreaTheme) return this;

    return BaconTextAreaTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconTextAreaTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconTextAreaColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconTextAreaProperties>(
          "properties", properties));
  }
}
