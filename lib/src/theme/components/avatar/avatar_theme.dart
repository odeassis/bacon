import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/avatar/avatar_colors.dart';
import 'package:bacon/src/theme/components/avatar/avatar_sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconAvatarTheme extends ThemeExtension<BaconAvatarTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  final BaconAvatarSizes sizes;

  final BaconAvatarColors colors;

  BaconAvatarTheme({
    required this.tokens,
    BaconAvatarSizes? sizes,
    BaconAvatarColors? colors,
  })  : colors = colors ??
            BaconAvatarColors(
              background: tokens.modes.background.brand,
              bodgeColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.secondary,
              textColor: tokens.modes.content.secondary,
            ),
        sizes = sizes ?? BaconAvatarSizes(tokens: tokens);

  @override
  BaconAvatarTheme copyWith({
    BaconTokens? tokens,
    BaconAvatarSizes? sizes,
    BaconAvatarColors? colors,
  }) {
    return BaconAvatarTheme(
      tokens: tokens ?? this.tokens,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
    );
  }

  @override
  BaconAvatarTheme lerp(ThemeExtension<BaconAvatarTheme>? other, double t) {
    if (other is! BaconAvatarTheme) return this;
    return BaconAvatarTheme(
      tokens: tokens.lerp(other.tokens, t),
      sizes: sizes.lerp(other.sizes, t),
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAvatarTheme"));
    properties.add(DiagnosticsProperty<BaconTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<BaconAvatarSizes>("sizes", sizes));
    properties.add(DiagnosticsProperty<BaconAvatarColors>("colors", colors));
  }
}
