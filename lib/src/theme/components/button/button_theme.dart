import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/button/button_colors.dart';
import 'package:bacon/src/theme/components/button/button_sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconButtonTheme extends ThemeExtension<BaconButtonTheme>
    with DiagnosticableTreeMixin {
  /// The tokens of the Bacon Design System.
  final BaconTokens tokens;

  /// The colors of the BaconButton.
  final BaconButtonColors colors;

  /// The sizes of the BaconButton.
  final BaconButtonSizes sizes;

  BaconButtonTheme({
    required this.tokens,
    BaconButtonColors? colors,
    BaconButtonSizes? sizes,
  })  : colors = colors ??
            BaconButtonColors(
              borderColor: tokens.modes.border.primary,
              background: tokens.modes.background.brand,
              textColor: tokens.modes.content.alwaysDark,
              iconColor: tokens.modes.content.alwaysDark,
              hoverBackground: tokens.modes.action.hoverOnColor,
              focusRing: tokens.modes.action.focusRingBrand,
            ),
        sizes = sizes ?? BaconButtonSizes(tokens: tokens);

  factory BaconButtonTheme.fromStyle({
    required BuildContext context,
    required BaconButtonType type,
    required BaconButtonStyle style,
  }) {
    final BaconTokens tokens = context.baconTheme?.tokens ?? BaconTokens.light;

    switch (type) {
      case BaconButtonType.primary:
        switch (style) {
          case BaconButtonStyle.filled:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.brand,
                background: tokens.modes.background.brand,
                textColor: tokens.modes.content.alwaysDark,
                iconColor: tokens.modes.content.alwaysDark,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingBrand,
              ),
            );
          case BaconButtonStyle.light:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.secondary,
                background: tokens.modes.background.brandLight,
                textColor: tokens.modes.content.brand,
                iconColor: tokens.modes.content.brand,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingBrand,
              ),
            );
          case BaconButtonStyle.outlined:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.brand,
                background: tokens.modes.background.primary,
                textColor: tokens.modes.content.brand,
                iconColor: tokens.modes.content.brand,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingBrand,
              ),
            );
        }
      case BaconButtonType.neutral:
        switch (style) {
          case BaconButtonStyle.filled:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.inverse,
                background: tokens.modes.background.inverse,
                textColor: tokens.modes.content.inverse,
                iconColor: tokens.modes.content.inverse,
                hoverBackground: tokens.modes.action.hoverOnDark,
                focusRing: tokens.modes.action.focusRingNeutral,
              ),
            );
          case BaconButtonStyle.light:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.secondary,
                background: tokens.modes.background.tertiary,
                textColor: tokens.modes.content.primary,
                iconColor: tokens.modes.content.primary,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingNeutral,
              ),
            );
          case BaconButtonStyle.outlined:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.inverse,
                background: tokens.modes.background.primary,
                textColor: tokens.modes.content.primary,
                iconColor: tokens.modes.content.primary,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingNeutral,
              ),
            );
        }
      case BaconButtonType.error:
        switch (style) {
          case BaconButtonStyle.filled:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.alert.danger,
                background: tokens.modes.alert.danger,
                textColor: tokens.modes.content.inverse,
                iconColor: tokens.modes.content.inverse,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingDanger,
              ),
            );
          case BaconButtonStyle.light:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.secondary,
                background: tokens.modes.alert.dangerLight,
                textColor: tokens.modes.alert.danger,
                iconColor: tokens.modes.alert.danger,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingDanger,
              ),
            );
          case BaconButtonStyle.outlined:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.alert.danger,
                background: tokens.modes.background.primary,
                textColor: tokens.modes.alert.danger,
                iconColor: tokens.modes.alert.danger,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingDanger,
              ),
            );

          default:
            return BaconButtonTheme(
              tokens: tokens,
              colors: BaconButtonColors(
                borderColor: tokens.modes.border.primary,
                background: tokens.modes.background.brand,
                textColor: tokens.modes.content.inverse,
                iconColor: tokens.modes.content.inverse,
                hoverBackground: tokens.modes.action.hoverOnColor,
                focusRing: tokens.modes.action.focusRingBrand,
              ),
            );
        }
    }
  }

  @override
  BaconButtonTheme copyWith({
    BaconTokens? tokens,
    BaconButtonColors? colors,
    BaconButtonSizes? sizes,
  }) {
    return BaconButtonTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconButtonTheme lerp(ThemeExtension<BaconButtonTheme>? other, double t) {
    if (other is! BaconButtonTheme) return this;

    return BaconButtonTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconButtonTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconButtonColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconButtonSizes>("sizes", sizes));
  }
}
