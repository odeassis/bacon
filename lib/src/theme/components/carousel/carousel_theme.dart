import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'carousel_colors.dart';
import 'carousel_properties.dart';

@immutable
class HiveCarouselTheme extends ThemeExtension<HiveCarouselTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveCarouselColors colors;
  final HiveCarouselProperties properties;

  HiveCarouselTheme({
    required this.tokens,
    HiveCarouselColors? colors,
    HiveCarouselProperties? properties,
  })  : colors = colors ??
            HiveCarouselColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.primary,
            ),
        properties = properties ??
            HiveCarouselProperties(
              gap: tokens.scale.gap.x2s,
              textStyle: tokens.typography.label.md,
              autoPlayDelay: const Duration(seconds: 3),
              transitionDuration: const Duration(milliseconds: 800),
              transitionCurve: Curves.fastOutSlowIn,
            );

  @override
  HiveCarouselTheme copyWith({
    HiveTokens? tokens,
    HiveCarouselColors? colors,
    HiveCarouselProperties? properties,
  }) {
    return HiveCarouselTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  HiveCarouselTheme lerp(ThemeExtension<HiveCarouselTheme>? other, double t) {
    if (other is! HiveCarouselTheme) return this;

    return HiveCarouselTheme(
      tokens: tokens,
      properties: properties.lerp(other.properties, t),
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveCarouselTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveCarouselColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveCarouselProperties>("properties", properties));
  }
}
