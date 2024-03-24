import 'package:bacon/src/theme/components/badge/badge_colors.dart';
import 'package:bacon/src/theme/components/badge/badge_size.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBadgeTheme extends ThemeExtension<BaconBadgeTheme>
    with DiagnosticableTreeMixin {
  final BaconTokes tokens;

  final BaconBadgeColors colors;

  final BaconBadgeSizes sizes;

  BaconBadgeTheme({
    required this.tokens,
    BaconBadgeColors? colors,
    BaconBadgeSizes? sizes,
  })  : colors = colors ??
            BaconBadgeColors(
              textColor: tokens.contentColor.inverse,
              iconColor: tokens.contentColor.inverse,
              backgroundColor: tokens.contentColor.accentGreen,
            ),
        sizes = sizes ?? BaconBadgeSizes(tokens: tokens);

  @override
  BaconBadgeTheme copyWith({
    BaconTokes? tokens,
    BaconBadgeColors? colors,
    BaconBadgeSizes? sizes,
  }) {
    return BaconBadgeTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconBadgeTheme lerp(ThemeExtension<BaconBadgeTheme>? other, double t) {
    if (other is! BaconBadgeTheme) return this;

    return BaconBadgeTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconBadgeTheme"))
      ..add(DiagnosticsProperty<BaconTokes>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconBadgeColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconBadgeSizes>("sizes", sizes));
  }
}
