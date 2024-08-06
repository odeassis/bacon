import 'package:flutter/material.dart';

import '../../theme/components/components.dart' as components;
import '../../theme/hive_theme.dart';
import '../../theme/tokens/tokens.dart';
import '../../utils/utils.dart' as utils;

enum BadgeSize {
  /// The minimum size of the badge.
  md,

  /// The small size of the badge.
  sm,
}

enum BadgeType {
  /// The filled type of the badge.
  filled,

  /// The outlined type of the badge.
  outlined,

  /// The light type of the badge.
  light,
}

class HiveBadge extends StatelessWidget {
  /// Whether to use the upper case text style for the badge.
  final bool isUpperCase;

  /// The border radius of the badge.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the badge.
  final Color? background;

  /// The text color of the badge.
  final Color? textColor;

  // The icon color of the badge.
  final Color? iconColor;

  /// The height of the badge.
  final double? height;

  /// The width of the badge.
  final double? width;

  /// The gap between the [leading], [label] and [trailing] widgets of the badge.
  final double? gap;

  /// The padding of the badge.
  final EdgeInsetsGeometry? padding;

  /// The size of the badge.
  final BadgeSize? badgeSize;

  /// The custom decoration of the badge.
  final Decoration? decoration;

  /// The semantic label for the badge.
  final String? semanticLabel;

  /// The callback that is called when the badge is tapped or pressed.
  final VoidCallback? onTap;

  /// The callback that is called when the badge is long-pressed.
  final VoidCallback? onLongPress;

  /// The widget to display before the [label] widget of the badge.
  final Widget? leading;

  /// The primary content of the badge widget.
  final Widget? label;

  /// The widget to display after the [label] widget of the badge.
  final Widget? trailing;

  /// Creates a Bacon Design badge.
  const HiveBadge({
    super.key,
    this.isUpperCase = true,
    this.borderRadius,
    this.background,
    this.iconColor,
    this.textColor,
    this.height,
    this.width,
    this.gap,
    this.padding,
    this.badgeSize,
    this.decoration,
    this.semanticLabel,
    this.onTap,
    this.onLongPress,
    this.leading,
    this.label,
    this.trailing,
  });

  components.HiveBadgeSizeProperties _getBadgeSize(
    BuildContext context,
    BadgeSize? badgeSize,
  ) {
    return switch (badgeSize) {
      BadgeSize.md => context.hiveTheme?.badgeTheme.sizes.md ??
          components.HiveBadgeSizes(tokens: HiveTokens.light).md,
      _ => context.hiveTheme?.badgeTheme.sizes.sm ??
          components.HiveBadgeSizes(tokens: HiveTokens.light).sm,
    };
  }

  @override
  Widget build(BuildContext context) {
    final components.HiveBadgeSizeProperties effectiveBadgeSize =
        _getBadgeSize(context, badgeSize);

    final TextStyle effectiveTextStyle = effectiveBadgeSize.textStyle;

    final Color effectiveTextColor = textColor ??
        context.hiveTheme?.badgeTheme.colors.textColor ??
        HiveTokens.light.modes.content.inverse;

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? effectiveBadgeSize.borderRadius;

    final Color effectiveBackground = background ??
        context.hiveTheme?.badgeTheme.colors.background ??
        HiveTokens.light.modes.accent.blue;

    final Color effectiveIconColor = iconColor ??
        context.hiveTheme?.badgeTheme.colors.iconColor ??
        HiveTokens.light.modes.content.inverse;

    final double? effectiveHeight = height ?? effectiveBadgeSize.height;

    final double effectiveGap = gap ?? effectiveBadgeSize.gap;

    final EdgeInsetsGeometry effectivePadding =
        padding ?? effectiveBadgeSize.padding;

    final EdgeInsets resolvedDirectionalPadding =
        effectivePadding.resolve(Directionality.of(context));

    final EdgeInsetsGeometry correctedPadding =
        padding ?? resolvedDirectionalPadding;

    Widget? effectiveLeadingWidget = leading;
    Widget? effectiveLabelWidget = label;
    Widget? effectiveTrailingWidget = trailing;

    // If there is a leading widget, add padding to the leading widget.
    if (leading != null) {
      final leadingPadding = EdgeInsetsDirectional.only(
        start: effectiveGap,
      );

      effectiveLeadingWidget = Padding(
        padding: leadingPadding,
        child: leading,
      );
    }
    // If there is a trailing widget, add padding to the trailing widget.
    if (label != null) {
      final labelPadding = EdgeInsetsDirectional.only(
        start: leading != null ? effectiveGap : 0,
        end: trailing != null ? effectiveGap : 0,
      );

      effectiveLabelWidget = Padding(
        padding: labelPadding,
        child: label,
      );
    }

    // If there is a trailing widget, add padding to the trailing widget.
    if (trailing != null) {
      final trailingPadding = EdgeInsetsDirectional.only(
        end: effectiveGap,
      );

      effectiveTrailingWidget = Padding(
        padding: trailingPadding,
        child: trailing,
      );
    }

    return Semantics(
      label: semanticLabel,
      button: false,
      focusable: false,
      child: GestureDetector(
        excludeFromSemantics: true,
        onTap: onTap,
        onLongPress: onLongPress,
        child: MouseRegion(
          cursor: onTap != null
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          child: Container(
            height: effectiveHeight,
            padding: correctedPadding,
            constraints: BoxConstraints(minWidth: effectiveHeight ?? 20),
            decoration: decoration ??
                utils.ShapeDecorationWithPremultipliedAlpha(
                  color: effectiveBackground,
                  shape: utils.HiveSquircleBorder(
                    borderRadius:
                        effectiveBorderRadius.squircleBorderRadius(context),
                  ),
                ),
            child: IconTheme(
              data: IconThemeData(
                color: effectiveIconColor,
                size: effectiveBadgeSize.iconSizeValue,
              ),
              child: DefaultTextStyle(
                style: effectiveTextStyle.copyWith(color: effectiveTextColor),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leading != null) effectiveLeadingWidget!,
                    if (label != null) effectiveLabelWidget!,
                    if (trailing != null) effectiveTrailingWidget!,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
