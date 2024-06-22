import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../tokens/tokens.dart';
import 'linear_progress_colors.dart';
import 'linear_progress_sizes.dart';

@immutable
class BaconLinearProgressTheme extends ThemeExtension<BaconLinearProgressTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  final BaconLinearProgressColors colors;

  final BaconLinearProgressSizes sizes;

  BaconLinearProgressTheme({
    required this.tokens,
    BaconLinearProgressColors? colors,
    BaconLinearProgressSizes? sizes,
  })  : colors = colors ??
            BaconLinearProgressColors(
              color: tokens.modes.accent.blue,
              backgroundColor: tokens.modes.accent.green,
              textColor: tokens.modes.accent.purple,
            ),
        sizes = sizes ?? BaconLinearProgressSizes(tokens: tokens);

  @override
  BaconLinearProgressTheme copyWith({
    BaconTokens? tokens,
    BaconLinearProgressColors? colors,
    BaconLinearProgressSizes? sizes,
  }) {
    return BaconLinearProgressTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconLinearProgressTheme lerp(
      ThemeExtension<BaconLinearProgressTheme>? other, double t) {
    if (other is! BaconLinearProgressTheme) return this;

    return BaconLinearProgressTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconLinearProgressTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconLinearProgressColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconLinearProgressSizes>("sizes", sizes));
  }
}
