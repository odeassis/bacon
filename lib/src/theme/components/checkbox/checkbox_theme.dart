import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'checkbox_colors.dart';
import 'checkbox_sizes.dart';

@immutable
class HiveCheckboxTheme extends ThemeExtension<HiveCheckboxTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveCheckboxColors colors;
  final HiveCheckboxSizes sizes;

  HiveCheckboxTheme({
    required this.tokens,
    HiveCheckboxColors? colors,
    HiveCheckboxSizes? sizes,
  })  : colors = colors ??
            HiveCheckboxColors(
              activeColor: tokens.modes.action.active,
              borderColor: tokens.modes.border.primary,
              checkColor: tokens.modes.content.inverse,
              inactiveColor: tokens.modes.action.disabled,
              textColor: tokens.modes.content.primary,
            ),
        sizes = sizes ?? HiveCheckboxSizes(tokens: tokens);

  @override
  HiveCheckboxTheme copyWith({
    HiveTokens? tokens,
    HiveCheckboxColors? colors,
    HiveCheckboxSizes? sizes,
  }) {
    return HiveCheckboxTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveCheckboxTheme lerp(ThemeExtension<HiveCheckboxTheme>? other, double t) {
    if (other is! HiveCheckboxTheme) return this;

    return HiveCheckboxTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveCheckboxTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveCheckboxColors>("colors", colors));
    properties.add(DiagnosticsProperty<HiveCheckboxSizes>("sizes", sizes));
  }
}
