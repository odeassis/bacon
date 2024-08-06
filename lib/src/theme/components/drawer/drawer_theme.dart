import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'drawer_colors.dart';
import 'drawer_properties.dart';
import 'drawer_shadows.dart';

@immutable
class HiveDrawerTheme extends ThemeExtension<HiveDrawerTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveDrawerColors colors;

  final HiveDrawerProperties properties;

  final HiveDrawerShadows shadows;

  HiveDrawerTheme({
    required this.tokens,
    HiveDrawerColors? colors,
    HiveDrawerProperties? properties,
    HiveDrawerShadows? shadows,
  })  : colors = colors ??
            HiveDrawerColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.secondary,
              backgroundColor: tokens.modes.background.primary,
              barrierColor: tokens.modes.background.secondary,
            ),
        properties = properties ??
            HiveDrawerProperties(
              borderRadius: BorderRadius.zero,
              width: 448,
              textStyle: tokens.typography.label.lg,
            ),
        shadows =
            shadows ?? HiveDrawerShadows(drawerShadows: tokens.shadows.lg);

  @override
  HiveDrawerTheme copyWith({
    HiveTokens? tokens,
    HiveDrawerColors? colors,
    HiveDrawerProperties? properties,
    HiveDrawerShadows? shadows,
  }) {
    return HiveDrawerTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  HiveDrawerTheme lerp(ThemeExtension<HiveDrawerTheme>? other, double t) {
    if (other is! HiveDrawerTheme) return this;

    return HiveDrawerTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveDrawerTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveDrawerColors>("colors", colors));

    diagnosticProperties.add(
        DiagnosticsProperty<HiveDrawerProperties>("properties", properties));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveDrawerShadows>("shadows", shadows));
  }
}
