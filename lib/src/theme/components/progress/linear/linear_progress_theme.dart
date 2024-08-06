import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../tokens/hive_tokens.dart';
import 'linear_progress_colors.dart';
import 'linear_progress_sizes.dart';

@immutable
class HiveLinearProgressTheme extends ThemeExtension<HiveLinearProgressTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveLinearProgressColors colors;

  final HiveLinearProgressSizes sizes;

  HiveLinearProgressTheme({
    required this.tokens,
    HiveLinearProgressColors? colors,
    HiveLinearProgressSizes? sizes,
  })  : colors = colors ??
            HiveLinearProgressColors(
              color: tokens.modes.accent.blue,
              backgroundColor: tokens.modes.accent.green,
              textColor: tokens.modes.accent.purple,
            ),
        sizes = sizes ?? HiveLinearProgressSizes(tokens: tokens);

  @override
  HiveLinearProgressTheme copyWith({
    HiveTokens? tokens,
    HiveLinearProgressColors? colors,
    HiveLinearProgressSizes? sizes,
  }) {
    return HiveLinearProgressTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveLinearProgressTheme lerp(
      ThemeExtension<HiveLinearProgressTheme>? other, double t) {
    if (other is! HiveLinearProgressTheme) return this;

    return HiveLinearProgressTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveLinearProgressTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressColors>("colors", colors));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressSizes>("sizes", sizes));
  }
}
