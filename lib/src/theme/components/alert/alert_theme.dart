import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart' as widget;
import '../../hive_theme.dart';
import '../../tokens/hive_tokens.dart';
import 'alert_colors.dart';
import 'alert_sizes.dart';

@immutable
class HiveAlertTheme extends ThemeExtension<HiveAlertTheme>
    with DiagnosticableTreeMixin {
  // Hive Tokens [HiveTokens]
  final HiveTokens tokens;

  // Hive Colors [HiveAlertComponentColors]
  final HiveAlertComponentColors colors;

  // Hive Sizes [HiveAlertSizes]
  final HiveAlertSizes sizes;

  HiveAlertTheme({
    required this.tokens,
    HiveAlertComponentColors? colors,
    HiveAlertSizes? sizes,
  })  : colors = colors ??
            HiveAlertComponentColors(
              background: tokens.modes.alert.info,
              textColor: tokens.modes.content.inverse,
              borderColor: tokens.modes.border.primary,
              iconColor: tokens.modes.content.inverse,
            ),
        sizes = sizes ??
            HiveAlertSizes(
              tokens: tokens,
            );

  factory HiveAlertTheme.fromStatusAndStyle({
    required BuildContext context,
    required widget.AlertStatus status,
    required widget.AlertStyle style,
  }) {
    Color background;
    Color textColor;
    Color borderColor;
    Color iconColor;

    final HiveTokens tokens = context.hiveTheme!.tokens;

    switch (status) {
      case widget.AlertStatus.info:
        switch (style) {
          case widget.AlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case widget.AlertStyle.filled:
            background = tokens.modes.alert.info;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case widget.AlertStyle.light:
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
      case widget.AlertStatus.success:
        switch (style) {
          case widget.AlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case widget.AlertStyle.filled:
            background = tokens.modes.alert.success;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case widget.AlertStyle.light:
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
      case widget.AlertStatus.warning:
        switch (style) {
          case widget.AlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case widget.AlertStyle.filled:
            background = tokens.modes.alert.warning;
            textColor = tokens.modes.content.alwaysDark;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.alwaysDark;
            break;
          case widget.AlertStyle.light:
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
      case widget.AlertStatus.error:
        switch (style) {
          case widget.AlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case widget.AlertStyle.filled:
            background = tokens.modes.alert.danger;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case widget.AlertStyle.light:
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
      case widget.AlertStatus.update:
        switch (style) {
          case widget.AlertStyle.outlined:
            background = tokens.modes.background.primary;
            textColor = tokens.modes.content.primary;
            borderColor = tokens.modes.border.primary;
            iconColor = tokens.modes.content.primary;
            break;
          case widget.AlertStyle.filled:
            background = tokens.modes.background.inverse;
            textColor = tokens.modes.content.inverse;
            borderColor = tokens.modes.border.secondary;
            iconColor = tokens.modes.content.inverse;
            break;
          case widget.AlertStyle.light:
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

    return HiveAlertTheme(
      tokens: tokens,
      colors: HiveAlertComponentColors(
        background: background,
        textColor: textColor,
        borderColor: borderColor,
        iconColor: iconColor,
      ),
      sizes: HiveAlertSizes(tokens: tokens),
    );
  }

  @override
  HiveAlertTheme copyWith({
    HiveAlertComponentColors? colors,
    HiveAlertSizes? sizes,
  }) {
    return HiveAlertTheme(
      tokens: tokens,
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveAlertTheme lerp(ThemeExtension<HiveAlertTheme>? other, double t) {
    if (other is! HiveAlertTheme) return this;

    return HiveAlertTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAlertTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>('tokens', tokens));
    properties
        .add(DiagnosticsProperty<HiveAlertComponentColors>('colors', colors));
    properties.add(DiagnosticsProperty<HiveAlertSizes>('sizes', sizes));
  }
}
