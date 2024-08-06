import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'avatar_colors.dart';
import 'avatar_sizes.dart';

@immutable
class HiveAvatarTheme extends ThemeExtension<HiveAvatarTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveAvatarSizes sizes;

  final HiveAvatarColors colors;

  HiveAvatarTheme({
    required this.tokens,
    HiveAvatarSizes? sizes,
    HiveAvatarColors? colors,
  })  : colors = colors ??
            HiveAvatarColors(
              background: tokens.modes.background.brandLight,
              bodgeColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.secondary,
              textColor: tokens.modes.content.secondary,
            ),
        sizes = sizes ?? HiveAvatarSizes(tokens: tokens);

  @override
  HiveAvatarTheme copyWith({
    HiveTokens? tokens,
    HiveAvatarSizes? sizes,
    HiveAvatarColors? colors,
  }) {
    return HiveAvatarTheme(
      tokens: tokens ?? this.tokens,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
    );
  }

  @override
  HiveAvatarTheme lerp(ThemeExtension<HiveAvatarTheme>? other, double t) {
    if (other is! HiveAvatarTheme) return this;
    return HiveAvatarTheme(
      tokens: tokens.lerp(other.tokens, t),
      sizes: sizes.lerp(other.sizes, t),
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAvatarTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveAvatarSizes>("sizes", sizes));
    properties.add(DiagnosticsProperty<HiveAvatarColors>("colors", colors));
  }
}
