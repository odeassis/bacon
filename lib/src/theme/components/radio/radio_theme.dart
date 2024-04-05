import 'package:bacon/src/theme/components/radio/radio_colors.dart';
import 'package:bacon/src/theme/components/radio/radio_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconRadioTheme extends ThemeExtension<BaconRadioTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconRadioColors colors;
  final BaconRadioProperties properties;

  BaconRadioTheme({
    required this.tokens,
    BaconRadioColors? colors,
    BaconRadioProperties? properties,
  })  : colors = colors ??
            BaconRadioColors(
              activeColor: tokens.modes.action.active,
              inactiveColor: tokens.modes.action.disabled,
              textColor: tokens.modes.content.primary,
            ),
        properties = properties ??
            BaconRadioProperties(textStyle: tokens.typography.label.md);

  @override
  BaconRadioTheme copyWith({
    BaconTokens? tokens,
    BaconRadioColors? colors,
    BaconRadioProperties? properties,
  }) {
    return BaconRadioTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  BaconRadioTheme lerp(ThemeExtension<BaconRadioTheme>? other, double t) {
    if (other is! BaconRadioTheme) return this;

    return BaconRadioTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconRadioTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconRadioColors>("colors", colors))
      ..add(
          DiagnosticsProperty<BaconRadioProperties>("properties", properties));
  }
}
