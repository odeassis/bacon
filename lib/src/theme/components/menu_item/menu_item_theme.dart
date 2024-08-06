import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'menu_item_colors.dart';
import 'menu_item_properties.dart';

@immutable
class HiveMenuItemTheme extends ThemeExtension<HiveMenuItemTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveMenuItemColors colors;

  final HiveMenuItemProperties properties;

  HiveMenuItemTheme({
    required this.tokens,
    HiveMenuItemColors? colors,
    HiveMenuItemProperties? properties,
  })  : colors = colors ??
            HiveMenuItemColors(
              background: Colors.transparent,
              dividerColor: tokens.modes.border.secondary,
              iconColor: tokens.modes.content.primary,
              labelTextColor: tokens.modes.content.primary,
              contentTextColor: tokens.modes.content.secondary,
            ),
        properties = properties ??
            HiveMenuItemProperties(
              borderRadius: tokens.shape.radii.surface,
              verticalGap: tokens.scale.gap.xs,
              minimumHeight: tokens.scale.component.md,
              padding: EdgeInsets.all(tokens.scale.component.x3s),
              labelTextStyle: tokens.typography.label.md,
              contentTextStyle: tokens.typography.label.sm,
            );

  @override
  HiveMenuItemTheme copyWith({
    HiveTokens? tokens,
    HiveMenuItemColors? colors,
    HiveMenuItemProperties? properties,
  }) {
    return HiveMenuItemTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  HiveMenuItemTheme lerp(ThemeExtension<HiveMenuItemTheme>? other, double t) {
    if (other is! HiveMenuItemTheme) return this;

    return HiveMenuItemTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveMenuItemTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveMenuItemColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveMenuItemProperties>("properties", properties));
  }
}
