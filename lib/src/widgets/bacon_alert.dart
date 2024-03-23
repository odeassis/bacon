import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/theme_components/alert.dart';
import 'package:flutter/material.dart';

enum BaconAlertVariant {
  information,
  warning,
  success,
  error,
  update,
}

enum BaconAlertSize {
  small,
  large,
}

enum BaconAlertStyle {
  filled,
  outlined,
  light,
}

class BaconAlert extends StatelessWidget {
  const BaconAlert({
    super.key,
    required this.title,
    this.style,
    this.shape,
    this.body,
    this.showBody,
    this.size,
  }) : variant = BaconAlertVariant.information;

  const BaconAlert.warning({
    super.key,
    required this.title,
    this.style,
    this.shape,
    this.body,
    this.showBody,
    this.size,
  })  : variant = BaconAlertVariant.warning,
        assert(showBody == null || body != null),
        assert(size == BaconAlertSize.small && body == null);

  const BaconAlert.success({
    super.key,
    required this.title,
    this.style,
    this.shape,
    this.body,
    this.showBody,
    this.size,
  }) : variant = BaconAlertVariant.success;

  const BaconAlert.error({
    super.key,
    required this.title,
    this.style,
    this.shape,
    this.body,
    this.showBody,
    this.size,
  }) : variant = BaconAlertVariant.error;

  const BaconAlert.update({
    super.key,
    required this.title,
    this.style,
    this.shape,
    this.body,
    this.showBody,
    this.size,
  })  : variant = BaconAlertVariant.update,
        assert(showBody == null || body != null),
        assert(size == BaconAlertSize.small && body == null);

  final BaconAlertVariant variant;
  final BaconAlertStyle? style;
  final BaconAlertSize? size;
  final BaconShapeTheme? shape;
  final Widget title;
  final Widget? body;
  final bool? showBody;

  BaconAlertTheme _getEffectiveAlertTheme(BaconThemeData theme) {
    switch (variant) {
      case BaconAlertVariant.information:
        return style == BaconAlertStyle.outlined
            ? theme.informationAlertOutlineTheme
            : style == BaconAlertStyle.light
                ? theme.informationAlertLightTheme
                : theme.informationAlertFilledTheme;
      case BaconAlertVariant.warning:
        return theme.warningAlertTheme;
      case BaconAlertVariant.success:
        return theme.successAlertTheme;
      case BaconAlertVariant.error:
        return theme.errorAlertTheme;
      case BaconAlertVariant.update:
        return theme.updateAlertTheme;
    }
  }

  BaconShapeTheme _getEffectiveShapeTheme(BaconThemeData theme) {
    return shape ?? theme.shape;
  }

  @override
  Widget build(BuildContext context) {
    final theme = BaconTheme.of(context);

    final effectiveAlertTheme = _getEffectiveAlertTheme(theme);
    final borderRadius = _getEffectiveShapeTheme(theme).surface;

    final effectiveTitleStyle = effectiveAlertTheme.titleStyle ??
        theme.textTheme.headlineMedium
            .copyWith(color: theme.colorScheme.contentPrimary);

    final effectiveBodyStyle = effectiveAlertTheme.bodyStyle ??
        theme.textTheme.bodyMedium
            .copyWith(color: theme.colorScheme.contentPrimary);

    final effectiveIcon = switch (variant) {
      BaconAlertVariant.information => BaconIcons.information_circle,
      BaconAlertVariant.warning => BaconIcons.warning_triangle,
      BaconAlertVariant.success => BaconIcons.check_circle,
      BaconAlertVariant.error => BaconIcons.delete_circle,
      BaconAlertVariant.update => BaconIcons.cog,
    };

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: effectiveAlertTheme.backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: style != BaconAlertStyle.outlined
            ? null
            : Border.all(color: theme.colorScheme.borderPrimary),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              effectiveIcon,
              size: 24,
              color: theme.colorScheme.backgroundAccentBlue,
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultTextStyle(
                  style: effectiveTitleStyle,
                  child: title,
                ),
                if (body != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: DefaultTextStyle(
                      style: effectiveBodyStyle,
                      child: body!,
                    ),
                  ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: BaconButton.outline(
              size: BaconButtonSize.icon,
              icon: Icon(BaconIcons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
