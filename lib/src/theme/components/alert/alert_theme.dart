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
              background: tokens.backgroundColor.alertInformation,
              textColor: tokens.contentColor.inverse,
              borderColor: tokens.borderColor.primary,
              iconColor: tokens.contentColor.inverse,
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
            background = context.baconTheme?.tokens.backgroundColor.primary ??
                tokens.backgroundColor.primary;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor = context.baconTheme?.tokens.borderColor.primary ??
                tokens.borderColor.primary;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          case BaconAlertStyle.filled:
            background =
                context.baconTheme?.tokens.backgroundColor.alertInformation ??
                    tokens.backgroundColor.alertInformation;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor =
                context.baconTheme?.tokens.borderColor.alertInformation ??
                    tokens.borderColor.alertInformation;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            break;
          case BaconAlertStyle.light:
            background = context
                    .baconTheme?.tokens.backgroundColor.alertInformationLight ??
                tokens.backgroundColor.alertInformationLight;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor =
                context.baconTheme?.tokens.borderColor.alertInformationLight ??
                    tokens.borderColor.alertInformationLight;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          default:
            background =
                context.baconTheme?.tokens.backgroundColor.alertInformation ??
                    tokens.backgroundColor.alertInformation;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor =
                context.baconTheme?.tokens.borderColor.alertInformation ??
                    tokens.borderColor.alertInformation;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
        }
        break;
      case BaconAlertStatus.success:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = context.baconTheme?.tokens.backgroundColor.primary ??
                tokens.backgroundColor.primary;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor = context.baconTheme?.tokens.borderColor.primary ??
                tokens.borderColor.primary;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          case BaconAlertStyle.filled:
            background =
                context.baconTheme?.tokens.backgroundColor.alertSuccess ??
                    tokens.backgroundColor.alertSuccess;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor = context.baconTheme?.tokens.borderColor.alertSuccess ??
                tokens.borderColor.alertSuccess;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            break;
          case BaconAlertStyle.light:
            background =
                context.baconTheme?.tokens.backgroundColor.alertSuccessLight ??
                    tokens.backgroundColor.alertSuccessLight;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor =
                context.baconTheme?.tokens.borderColor.alertSuccessLight ??
                    tokens.borderColor.alertSuccessLight;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          default:
            background =
                context.baconTheme?.tokens.backgroundColor.alertSuccess ??
                    tokens.backgroundColor.alertSuccess;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor = context.baconTheme?.tokens.borderColor.alertSuccess ??
                tokens.borderColor.alertSuccess;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            break;
        }
        break;
      case BaconAlertStatus.warning:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = context.baconTheme?.tokens.backgroundColor.primary ??
                tokens.backgroundColor.primary;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.alwaysDark;
            borderColor = context.baconTheme?.tokens.borderColor.alwaysDark ??
                tokens.borderColor.alwaysDark;
            iconColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            break;
          case BaconAlertStyle.filled:
            background =
                context.baconTheme?.tokens.backgroundColor.alertWarning ??
                    tokens.backgroundColor.alertWarning;
            textColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            borderColor = context.baconTheme?.tokens.borderColor.alertWarning ??
                tokens.borderColor.alertWarning;
            iconColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            break;
          case BaconAlertStyle.light:
            background =
                context.baconTheme?.tokens.backgroundColor.alertWarningLight ??
                    tokens.backgroundColor.alertWarningLight;
            textColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            borderColor =
                context.baconTheme?.tokens.borderColor.alertWarningLight ??
                    tokens.borderColor.alertWarningLight;
            iconColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            break;
          default:
            background =
                context.baconTheme?.tokens.backgroundColor.alertWarning ??
                    tokens.backgroundColor.alertWarning;
            textColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            borderColor = context.baconTheme?.tokens.borderColor.alertWarning ??
                tokens.borderColor.alertWarning;
            iconColor = context.baconTheme?.tokens.contentColor.alwaysDark ??
                tokens.contentColor.alwaysDark;
            break;
        }
        break;
      case BaconAlertStatus.error:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = context.baconTheme?.tokens.backgroundColor.primary ??
                tokens.backgroundColor.primary;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor = context.baconTheme?.tokens.borderColor.primary ??
                tokens.borderColor.primary;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          case BaconAlertStyle.filled:
            background =
                context.baconTheme?.tokens.backgroundColor.alertDanger ??
                    tokens.backgroundColor.alertDanger;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor = context.baconTheme?.tokens.borderColor.alertDanger ??
                tokens.borderColor.alertDanger;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            break;
          case BaconAlertStyle.light:
            background =
                context.baconTheme?.tokens.backgroundColor.alertDangerLight ??
                    tokens.backgroundColor.alertDangerLight;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor =
                context.baconTheme?.tokens.borderColor.alertDangerLight ??
                    tokens.borderColor.alertDangerLight;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          default:
            background =
                context.baconTheme?.tokens.backgroundColor.alertDanger ??
                    tokens.backgroundColor.alertDanger;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor = context.baconTheme?.tokens.borderColor.alertDanger ??
                tokens.borderColor.alertDanger;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            break;
        }
        break;
      case BaconAlertStatus.update:
        switch (style) {
          case BaconAlertStyle.outlined:
            background = context.baconTheme?.tokens.backgroundColor.primary ??
                tokens.backgroundColor.primary;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor = context.baconTheme?.tokens.borderColor.primary ??
                tokens.borderColor.primary;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          case BaconAlertStyle.filled:
            background = context.baconTheme?.tokens.backgroundColor.inverse ??
                tokens.backgroundColor.inverse;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor = context.baconTheme?.tokens.borderColor.inverse ??
                tokens.borderColor.inverse;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            break;
          case BaconAlertStyle.light:
            background = context.baconTheme?.tokens.backgroundColor.tertiary ??
                tokens.backgroundColor.tertiary;
            textColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            borderColor = context.baconTheme?.tokens.borderColor.tertiary ??
                tokens.borderColor.tertiary;
            iconColor = context.baconTheme?.tokens.contentColor.primary ??
                tokens.contentColor.primary;
            break;
          default:
            background = context.baconTheme?.tokens.backgroundColor.inverse ??
                tokens.backgroundColor.inverse;
            textColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
            borderColor = context.baconTheme?.tokens.borderColor.inverse ??
                tokens.borderColor.inverse;
            iconColor = context.baconTheme?.tokens.contentColor.inverse ??
                tokens.contentColor.inverse;
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
