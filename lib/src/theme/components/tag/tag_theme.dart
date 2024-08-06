import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'tag_colors.dart';
import 'tag_sizes.dart';

@immutable
class HiveTagTheme extends ThemeExtension<HiveTagTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveTagColors colors;
  final HiveTagSizes sizes;

  HiveTagTheme({
    required this.tokens,
    HiveTagColors? colors,
    HiveTagSizes? sizes,
  })  : colors = colors ??
            HiveTagColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.primary,
              background: tokens.modes.background.primary,
            ),
        sizes = sizes ?? HiveTagSizes(tokens: tokens);

  @override
  HiveTagTheme copyWith({
    HiveTokens? tokens,
    HiveTagColors? colors,
    HiveTagSizes? sizes,
  }) {
    return HiveTagTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveTagTheme lerp(ThemeExtension<HiveTagTheme>? other, double t) {
    if (other is! HiveTagTheme) return this;

    return HiveTagTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTagTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveTagColors>("colors", colors));
    properties.add(DiagnosticsProperty<HiveTagSizes>("sizes", sizes));
  }
}
