import 'package:bacon/src/theme/components/dropdown/dropdown_colors.dart';
import 'package:bacon/src/theme/components/dropdown/dropdown_properties.dart';
import 'package:bacon/src/theme/components/dropdown/dropdown_shadowns.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDropdownTheme extends ThemeExtension<BaconDropdownTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconDropdownColors colors;
  final BaconDropdownProperties properties;
  final BaconDropdownShadows shadows;

  BaconDropdownTheme({
    required this.tokens,
    BaconDropdownColors? colors,
    BaconDropdownProperties? properties,
    BaconDropdownShadows? shadows,
  })  : colors = colors ??
            BaconDropdownColors(
              textColor: tokens.modes.content.tertiary,
              iconColor: tokens.modes.content.secondary,
              background: tokens.modes.background.primary,
            ),
        properties = properties ??
            BaconDropdownProperties(
              borderRadius: tokens.shape.radii.xs,
              distanceToTarget: tokens.scale.component.x4s,
              transitionDuration: Duration.zero,
              transitionCurve: tokens.transitions.transitionCurve,
              contentPadding: EdgeInsets.all(tokens.scale.padding.sm),
              dropdownMargin: EdgeInsets.all(tokens.scale.gap.sm),
              textStyle: tokens.typography.label.sm,
            ),
        shadows =
            shadows ?? BaconDropdownShadows(dropdownShadows: tokens.shadows.sm);

  @override
  BaconDropdownTheme copyWith({
    BaconTokens? tokens,
    BaconDropdownColors? colors,
    BaconDropdownProperties? properties,
    BaconDropdownShadows? shadows,
  }) {
    return BaconDropdownTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  BaconDropdownTheme lerp(ThemeExtension<BaconDropdownTheme>? other, double t) {
    if (other is! BaconDropdownTheme) return this;

    return BaconDropdownTheme(
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
      ..add(DiagnosticsProperty("type", "BaconDropdownTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconDropdownColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconDropdownProperties>(
          "properties", properties))
      ..add(DiagnosticsProperty<BaconDropdownShadows>("shadows", shadows));
  }
}
