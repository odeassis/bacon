import 'package:bacon/src/theme/components/checkbox/checkbox_colors.dart';
import 'package:bacon/src/theme/components/checkbox/checkbox_sizes.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconCheckboxTheme extends ThemeExtension<BaconCheckboxTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconCheckboxColors colors;
  final BaconCheckboxSizes sizes;

  BaconCheckboxTheme({
    required this.tokens,
    BaconCheckboxColors? colors,
    BaconCheckboxSizes? sizes,
  })  : colors = colors ??
            BaconCheckboxColors(
              activeColor: tokens.modes.action.active,
              borderColor: tokens.modes.border.primary,
              checkColor: tokens.modes.content.inverse,
              inactiveColor: tokens.modes.action.disabled,
              textColor: tokens.modes.content.primary,
            ),
        sizes = sizes ?? BaconCheckboxSizes(tokens: tokens);

  @override
  BaconCheckboxTheme copyWith({
    BaconTokens? tokens,
    BaconCheckboxColors? colors,
    BaconCheckboxSizes? sizes,
  }) {
    return BaconCheckboxTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconCheckboxTheme lerp(ThemeExtension<BaconCheckboxTheme>? other, double t) {
    if (other is! BaconCheckboxTheme) return this;

    return BaconCheckboxTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconCheckboxTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconCheckboxColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconCheckboxSizes>("sizes", sizes));
  }
}
