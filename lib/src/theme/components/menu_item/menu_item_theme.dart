import 'package:bacon/src/theme/components/menu_item/menu_item_colors.dart';
import 'package:bacon/src/theme/components/menu_item/menu_item_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconMenuItemTheme extends ThemeExtension<BaconMenuItemTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  final BaconMenuItemColors colors;

  final BaconMenuItemProperties properties;

  BaconMenuItemTheme({
    required this.tokens,
    BaconMenuItemColors? colors,
    BaconMenuItemProperties? properties,
  })  : colors = colors ??
            BaconMenuItemColors(
              background: Colors.transparent,
              dividerColor: tokens.modes.border.secondary,
              iconColor: tokens.modes.content.primary,
              labelTextColor: tokens.modes.content.primary,
              contentTextColor: tokens.modes.content.secondary,
            ),
        properties = properties ??
            BaconMenuItemProperties(
              borderRadius: tokens.shape.radii.surface,
              verticalGap: tokens.scale.gap.xs,
              minimumHeight: tokens.scale.component.md,
              padding: EdgeInsets.all(tokens.scale.component.x3s),
              labelTextStyle: tokens.typography.label.md,
              contentTextStyle: tokens.typography.label.sm,
            );

  @override
  BaconMenuItemTheme copyWith({
    BaconTokens? tokens,
    BaconMenuItemColors? colors,
    BaconMenuItemProperties? properties,
  }) {
    return BaconMenuItemTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  BaconMenuItemTheme lerp(ThemeExtension<BaconMenuItemTheme>? other, double t) {
    if (other is! BaconMenuItemTheme) return this;

    return BaconMenuItemTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconMenuItemTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconMenuItemColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconMenuItemProperties>(
          "properties", properties));
  }
}
