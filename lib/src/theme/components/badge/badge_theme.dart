import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'badge_colors.dart';
import 'badge_sizes.dart';

@immutable
class HiveBadgeTheme extends ThemeExtension<HiveBadgeTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveBadgeColors colors;

  final HiveBadgeSizes sizes;

  HiveBadgeTheme({
    required this.tokens,
    HiveBadgeColors? colors,
    HiveBadgeSizes? sizes,
  })  : colors = colors ??
            HiveBadgeColors(
              textColor: tokens.modes.content.inverse,
              iconColor: tokens.modes.content.inverse,
              background: tokens.modes.accent.blue,
            ),
        sizes = sizes ?? HiveBadgeSizes(tokens: tokens);

  @override
  HiveBadgeTheme copyWith({
    HiveTokens? tokens,
    HiveBadgeColors? colors,
    HiveBadgeSizes? sizes,
  }) {
    return HiveBadgeTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveBadgeTheme lerp(ThemeExtension<HiveBadgeTheme>? other, double t) {
    if (other is! HiveBadgeTheme) return this;

    return HiveBadgeTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveBadgeTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveBadgeColors>("colors", colors));
    properties.add(DiagnosticsProperty<HiveBadgeSizes>("sizes", sizes));
  }
}
