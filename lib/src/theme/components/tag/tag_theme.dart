import 'package:bacon/src/theme/components/tag/tag_colors.dart';
import 'package:bacon/src/theme/components/tag/tag_sizes.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTagTheme extends ThemeExtension<BaconTagTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconTagColors colors;
  final BaconTagSizes sizes;

  BaconTagTheme({
    required this.tokens,
    BaconTagColors? colors,
    BaconTagSizes? sizes,
  })  : colors = colors ??
            BaconTagColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.primary,
              background: tokens.modes.background.primary,
            ),
        sizes = sizes ?? BaconTagSizes(tokens: tokens);

  @override
  BaconTagTheme copyWith({
    BaconTokens? tokens,
    BaconTagColors? colors,
    BaconTagSizes? sizes,
  }) {
    return BaconTagTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconTagTheme lerp(ThemeExtension<BaconTagTheme>? other, double t) {
    if (other is! BaconTagTheme) return this;

    return BaconTagTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTagTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconTagColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconTagSizes>("sizes", sizes));
  }
}
