import 'package:bacon/src/theme/components/carousel/carousel_colors.dart';
import 'package:bacon/src/theme/components/carousel/carousel_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconCarouselTheme extends ThemeExtension<BaconCarouselTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconCarouselColors colors;
  final BaconCarouselProperties properties;

  BaconCarouselTheme({
    required this.tokens,
    BaconCarouselColors? colors,
    BaconCarouselProperties? properties,
  })  : colors = colors ??
            BaconCarouselColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.primary,
            ),
        properties = properties ??
            BaconCarouselProperties(
              gap: tokens.scale.gap.x2s,
              textStyle: tokens.typography.label.md,
              autoPlayDelay: const Duration(seconds: 3),
              transitionDuration: const Duration(milliseconds: 800),
              transitionCurve: Curves.fastOutSlowIn,
            );

  @override
  BaconCarouselTheme copyWith({
    BaconTokens? tokens,
    BaconCarouselColors? colors,
    BaconCarouselProperties? properties,
  }) {
    return BaconCarouselTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  BaconCarouselTheme lerp(ThemeExtension<BaconCarouselTheme>? other, double t) {
    if (other is! BaconCarouselTheme) return this;

    return BaconCarouselTheme(
      tokens: tokens,
      properties: properties.lerp(other.properties, t),
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconCarouselTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconCarouselColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconCarouselProperties>(
          "properties", properties));
  }
}
