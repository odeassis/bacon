import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'divider_colors.dart';
import 'divider_sizes.dart';

@immutable
class HiveDividerTheme extends ThemeExtension<HiveDividerTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveDividerColors colors;
  final HiveDividerSizes sizes;

  HiveDividerTheme({
    required this.tokens,
    HiveDividerColors? colors,
    HiveDividerSizes? sizes,
  })  : colors = colors ??
            HiveDividerColors(
              dividerColor: tokens.modes.border.secondary,
              textColor: tokens.modes.content.tertiary,
              iconColor: tokens.modes.content.tertiary,
            ),
        sizes = sizes ??
            HiveDividerSizes(
              tokens: tokens,
            );

  @override
  HiveDividerTheme copyWith({
    HiveTokens? tokens,
    HiveDividerColors? colors,
    HiveDividerSizes? sizes,
  }) {
    return HiveDividerTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveDividerTheme lerp(ThemeExtension<HiveDividerTheme>? other, double t) {
    if (other is! HiveDividerTheme) return this;
    return HiveDividerTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDividerTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveDividerColors>("colors", colors));
    properties.add(DiagnosticsProperty<HiveDividerSizes>("sizes", sizes));
  }
}
