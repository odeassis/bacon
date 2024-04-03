import 'package:bacon/src/theme/components/divider/divider_colors.dart';
import 'package:bacon/src/theme/components/divider/divider_sizes.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDividerTheme extends ThemeExtension<BaconDividerTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconDividerColors colors;
  final BaconDividerSizes sizes;

  BaconDividerTheme({
    required this.tokens,
    BaconDividerColors? colors,
    BaconDividerSizes? sizes,
  })  : colors = colors ??
            BaconDividerColors(
              dividerColor: tokens.modes.border.secondary,
              textColor: tokens.modes.content.tertiary,
              iconColor: tokens.modes.content.tertiary,
            ),
        sizes = sizes ??
            BaconDividerSizes(
              tokens: tokens,
            );

  @override
  BaconDividerTheme copyWith({
    BaconTokens? tokens,
    BaconDividerColors? colors,
    BaconDividerSizes? sizes,
  }) {
    return BaconDividerTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconDividerTheme lerp(ThemeExtension<BaconDividerTheme>? other, double t) {
    if (other is! BaconDividerTheme) return this;
    return BaconDividerTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconDividerTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconDividerColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconDividerSizes>("sizes", sizes));
  }
}
