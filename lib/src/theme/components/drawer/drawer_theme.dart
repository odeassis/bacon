import 'package:bacon/src/theme/components/drawer/drawer_colors.dart';
import 'package:bacon/src/theme/components/drawer/drawer_properties.dart';
import 'package:bacon/src/theme/components/drawer/drawer_shadows.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';

@immutable
class BaconDrawerTheme extends ThemeExtension<BaconDrawerTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  final BaconDrawerColors colors;

  final BaconDrawerProperties properties;

  final BaconDrawerShadows shadows;

  BaconDrawerTheme({
    required this.tokens,
    BaconDrawerColors? colors,
    BaconDrawerProperties? properties,
    BaconDrawerShadows? shadows,
  })  : colors = colors ??
            BaconDrawerColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.secondary,
              backgroundColor: tokens.modes.background.primary,
              barrierColor: tokens.modes.background.secondary,
            ),
        properties = properties ??
            BaconDrawerProperties(
              borderRadius: BorderRadius.zero,
              width: 448,
              textStyle: tokens.typography.label.lg,
            ),
        shadows =
            shadows ?? BaconDrawerShadows(drawerShadows: tokens.shadows.lg);

  @override
  BaconDrawerTheme copyWith({
    BaconTokens? tokens,
    BaconDrawerColors? colors,
    BaconDrawerProperties? properties,
    BaconDrawerShadows? shadows,
  }) {
    return BaconDrawerTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  BaconDrawerTheme lerp(ThemeExtension<BaconDrawerTheme>? other, double t) {
    if (other is! BaconDrawerTheme) return this;

    return BaconDrawerTheme(
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
      ..add(DiagnosticsProperty("type", "BaconDrawerTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconDrawerColors>("colors", colors))
      ..add(
          DiagnosticsProperty<BaconDrawerProperties>("properties", properties))
      ..add(DiagnosticsProperty<BaconDrawerShadows>("shadows", shadows));
  }
}
