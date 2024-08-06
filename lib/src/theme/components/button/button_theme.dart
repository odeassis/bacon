import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'button_colors.dart';
import 'button_sizes.dart';

@immutable
class HiveButtonTheme extends ThemeExtension<HiveButtonTheme>
    with DiagnosticableTreeMixin {
  /// The tokens of the Hive Design System.
  final HiveTokens tokens;

  /// The colors of the HiveButton.
  final HiveButtonColors colors;

  /// The sizes of the HiveButton.
  final HiveButtonSizes sizes;

  HiveButtonTheme({
    required this.tokens,
    HiveButtonColors? colors,
    HiveButtonSizes? sizes,
  })  : colors = colors ??
            HiveButtonColors(
              borderColor: tokens.modes.border.primary,
              background: tokens.modes.background.brand,
              textColor: tokens.modes.content.alwaysDark,
              iconColor: tokens.modes.content.alwaysDark,
              hoverBackground: tokens.modes.action.hoverOnColor,
              focusRing: tokens.modes.action.focusRingBrand,
            ),
        sizes = sizes ?? HiveButtonSizes(tokens: tokens);

  // factory HiveButtonTheme.fromStyle({
  //   required BuildContext context,
  //   required HiveButtonType type,
  //   required HiveButtonStyle style,
  // }) {
  //   final HiveTokens tokens = context.HiveTheme?.tokens ?? HiveTokens.light;

  //   switch (type) {
  //     case HiveButtonType.primary:
  //       switch (style) {
  //         case HiveButtonStyle.filled:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.brand,
  //               background: tokens.modes.background.brand,
  //               textColor: tokens.modes.content.alwaysDark,
  //               iconColor: tokens.modes.content.alwaysDark,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingBrand,
  //             ),
  //           );
  //         case HiveButtonStyle.light:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.secondary,
  //               background: tokens.modes.background.brandLight,
  //               textColor: tokens.modes.content.brand,
  //               iconColor: tokens.modes.content.brand,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingBrand,
  //             ),
  //           );
  //         case HiveButtonStyle.outlined:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.brand,
  //               background: tokens.modes.background.primary,
  //               textColor: tokens.modes.content.brand,
  //               iconColor: tokens.modes.content.brand,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingBrand,
  //             ),
  //           );
  //       }
  //     case HiveButtonType.neutral:
  //       switch (style) {
  //         case HiveButtonStyle.filled:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.inverse,
  //               background: tokens.modes.background.inverse,
  //               textColor: tokens.modes.content.inverse,
  //               iconColor: tokens.modes.content.inverse,
  //               hoverBackground: tokens.modes.action.hoverOnDark,
  //               focusRing: tokens.modes.action.focusRingNeutral,
  //             ),
  //           );
  //         case HiveButtonStyle.light:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.secondary,
  //               background: tokens.modes.background.tertiary,
  //               textColor: tokens.modes.content.primary,
  //               iconColor: tokens.modes.content.primary,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingNeutral,
  //             ),
  //           );
  //         case HiveButtonStyle.outlined:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.inverse,
  //               background: tokens.modes.background.primary,
  //               textColor: tokens.modes.content.primary,
  //               iconColor: tokens.modes.content.primary,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingNeutral,
  //             ),
  //           );
  //       }
  //     case HiveButtonType.error:
  //       switch (style) {
  //         case HiveButtonStyle.filled:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.alert.danger,
  //               background: tokens.modes.alert.danger,
  //               textColor: tokens.modes.content.inverse,
  //               iconColor: tokens.modes.content.inverse,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingDanger,
  //             ),
  //           );
  //         case HiveButtonStyle.light:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.secondary,
  //               background: tokens.modes.alert.dangerLight,
  //               textColor: tokens.modes.alert.danger,
  //               iconColor: tokens.modes.alert.danger,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingDanger,
  //             ),
  //           );
  //         case HiveButtonStyle.outlined:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.alert.danger,
  //               background: tokens.modes.background.primary,
  //               textColor: tokens.modes.alert.danger,
  //               iconColor: tokens.modes.alert.danger,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingDanger,
  //             ),
  //           );

  //         default:
  //           return HiveButtonTheme(
  //             tokens: tokens,
  //             colors: HiveButtonColors(
  //               borderColor: tokens.modes.border.primary,
  //               background: tokens.modes.background.brand,
  //               textColor: tokens.modes.content.inverse,
  //               iconColor: tokens.modes.content.inverse,
  //               hoverBackground: tokens.modes.action.hoverOnColor,
  //               focusRing: tokens.modes.action.focusRingBrand,
  //             ),
  //           );
  //       }
  //   }
  // }

  @override
  HiveButtonTheme copyWith({
    HiveTokens? tokens,
    HiveButtonColors? colors,
    HiveButtonSizes? sizes,
  }) {
    return HiveButtonTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveButtonTheme lerp(ThemeExtension<HiveButtonTheme>? other, double t) {
    if (other is! HiveButtonTheme) return this;

    return HiveButtonTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveButtonTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveButtonColors>("colors", colors));
    properties.add(DiagnosticsProperty<HiveButtonSizes>("sizes", sizes));
  }
}
