import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/alert/alert_colors.dart';
import 'package:bacon/src/theme/components/alert/alert_sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconAlertTheme extends ThemeExtension<BaconAlertTheme>
    with DiagnosticableTreeMixin {
  final BaconAlertColors colors;
  final BaconTokens tokens;
  final BaconAlertSizes sizes;

  BaconAlertTheme({
    required this.tokens,
    BaconAlertColors? colors,
    BaconAlertSizes? sizes,
  })  : colors = colors ??
            BaconAlertColors(
              background: tokens.modes.alert.info,
              textColor: tokens.modes.content.inverse,
              borderColor: tokens.modes.border.primary,
              iconColor: tokens.modes.content.inverse,
            ),
        sizes = sizes ??
            BaconAlertSizes(
              tokens: tokens,
            );

  factory BaconAlertTheme.fromStatusAndStyle({
    required BuildContext context,
    required BaconTokens tokens,
    required BaconAlertStatus status,
    required BaconAlertStyle style,
  }) {
    Color background;
    Color textColor;
    Color borderColor;
    Color iconColor;

    switch (status) {
      case BaconAlertStatus.info:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case BaconAlertStyle.filled:
            background = tokens.modes.alert.info;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case BaconAlertStyle.light:
            background = tokens.modes.alert.infoLight;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.primary;
            break;
          default:
            background = tokens.modes.alert.info;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
        }
        break;
      case BaconAlertStatus.success:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case BaconAlertStyle.filled:
            background = tokens.modes.alert.success;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case BaconAlertStyle.light:
            background = tokens.modes.alert.successLight;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.primary;
            break;
          default:
            background = tokens.modes.alert.success;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
        }
        break;
      case BaconAlertStatus.warning:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case BaconAlertStyle.filled:
            background = tokens.modes.alert.warning;
            textColor = tokens.modes.content.alwaysDark;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.alwaysDark;
            break;
          case BaconAlertStyle.light:
            background = tokens.modes.alert.warningLight;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.primary;
            break;
          default:
            background = tokens.modes.alert.warning;
            textColor = tokens.modes.content.alwaysDark;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.alwaysDark;
            break;
        }
        break;
      case BaconAlertStatus.error:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case BaconAlertStyle.filled:
            background = tokens.modes.alert.danger;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case BaconAlertStyle.light:
            background = tokens.modes.alert.dangerLight;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.primary;
            break;
          default:
            background = tokens.modes.alert.danger;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
        }
        break;
      case BaconAlertStatus.update:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case BaconAlertStyle.filled:
            background = tokens.modes.background.inverse;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case BaconAlertStyle.light:
            background = tokens.modes.background.tertiary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.primary;
            break;
          default:
            background = tokens.modes.background.inverse;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
        }
    }

    return BaconAlertTheme(
      tokens: tokens,
      colors: BaconAlertColors(
        background: background,
        textColor: textColor,
        borderColor: borderColor,
        iconColor: iconColor,
      ),
      sizes: BaconAlertSizes(tokens: tokens),
    );
  }

  @override
  BaconAlertTheme copyWith({
    BaconAlertColors? colors,
    BaconAlertSizes? sizes,
  }) {
    return BaconAlertTheme(
      tokens: tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconAlertTheme lerp(ThemeExtension<BaconAlertTheme>? other, double t) {
    if (other is! BaconAlertTheme) return this;

    return BaconAlertTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAlertTheme"));
    properties.add(DiagnosticsProperty<BaconTokens>('tokens', tokens));
    properties.add(DiagnosticsProperty<BaconAlertColors>('colors', colors));
    properties.add(DiagnosticsProperty<BaconAlertSizes>('sizes', sizes));
  }
}
