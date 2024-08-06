import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'radio_colors.dart';
import 'radio_properties.dart';

@immutable
class HiveRadioTheme extends ThemeExtension<HiveRadioTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveRadioColors colors;
  final HiveRadioProperties properties;

  HiveRadioTheme({
    required this.tokens,
    HiveRadioColors? colors,
    HiveRadioProperties? properties,
  })  : colors = colors ??
            HiveRadioColors(
              activeColor: tokens.modes.action.active,
              inactiveColor: tokens.modes.action.disabled,
              textColor: tokens.modes.content.primary,
            ),
        properties = properties ??
            HiveRadioProperties(textStyle: tokens.typography.label.md);

  @override
  HiveRadioTheme copyWith({
    HiveTokens? tokens,
    HiveRadioColors? colors,
    HiveRadioProperties? properties,
  }) {
    return HiveRadioTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  HiveRadioTheme lerp(ThemeExtension<HiveRadioTheme>? other, double t) {
    if (other is! HiveRadioTheme) return this;

    return HiveRadioTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveRadioTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveRadioColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveRadioProperties>("properties", properties));
  }
}
