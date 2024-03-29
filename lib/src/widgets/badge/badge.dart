import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/badge/badge_size.dart';
import 'package:bacon/src/theme/components/badge/badge_size_properties.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/shape_decoration.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:flutter/material.dart';

enum BaconBadgeSize {
  /// The minimum size of the badge.
  md,

  /// The small size of the badge.
  sm,
}

enum BaconBadgeType {
  /// The filled type of the badge.
  filled,

  /// The outlined type of the badge.
  outlined,

  /// The light type of the badge.
  light,
}

class BaconBadge extends StatelessWidget {
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
  final BaconBadgeSize? badgeSize;

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

  /// Creates a Moon Design badge.
  const BaconBadge({
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

  BaconBadgeSizeProperties _getBaconBadgeSize(
    BuildContext context,
    BaconBadgeSize? baconBadgeSize,
  ) {
    return switch (baconBadgeSize) {
      BaconBadgeSize.md => context.baconTheme?.badgeTheme.sizes.md ??
          BaconBadgeSizes(tokens: BaconTokens.light).md,
      _ => context.baconTheme?.badgeTheme.sizes.sm ??
          BaconBadgeSizes(tokens: BaconTokens.light).sm,
    };
  }

  @override
  Widget build(BuildContext context) {
    final BaconBadgeSizeProperties effectiveBaconBadgeSize =
        _getBaconBadgeSize(context, badgeSize);

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? effectiveBaconBadgeSize.borderRadius;

    final Color effectiveBackground = background ??
        context.baconTheme?.badgeTheme.colors.background ??
        BaconTokens.light.modes.accent.blue;

    final Color effectiveTextColor = textColor ??
        context.baconTheme?.badgeTheme.colors.textColor ??
        BaconTokens.light.modes.content.inverse;

    final Color effectiveIconColor = iconColor ??
        context.baconTheme?.badgeTheme.colors.iconColor ??
        BaconTokens.light.modes.content.inverse;

    final double? effectiveHeight = height ?? effectiveBaconBadgeSize.height;

    final double effectiveGap = gap ?? effectiveBaconBadgeSize.gap;

    final EdgeInsetsGeometry effectivePadding =
        padding ?? effectiveBaconBadgeSize.padding;

    final EdgeInsets resolvedDirectionalPadding =
        effectivePadding.resolve(Directionality.of(context));

    final EdgeInsetsGeometry correctedPadding = padding == null
        ? EdgeInsetsDirectional.fromSTEB(
            (leading == null && label != null) ? 0 : 0,
            resolvedDirectionalPadding.top,
            (trailing == null && label != null) ? 0 : 0,
            resolvedDirectionalPadding.bottom,
          )
        : resolvedDirectionalPadding;

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
        start: leading != null
            ? effectiveGap
            : context.padding?.xs ?? BaconTokens.light.scale.padding.xs,
        end: trailing != null
            ? effectiveGap
            : context.padding?.xs ?? BaconTokens.light.scale.padding.xs,
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
                ShapeDecorationWithPremultipliedAlpha(
                  color: effectiveBackground,
                  shape: BaconSquircleBorder(
                    borderRadius:
                        effectiveBorderRadius.squircleBorderRadius(context),
                  ),
                ),
            child: IconTheme(
              data: IconThemeData(
                color: effectiveIconColor,
                size: effectiveBaconBadgeSize.iconSizeValue,
              ),
              child: DefaultTextStyle(
                style: isUpperCase
                    ? effectiveBaconBadgeSize.upperCaseTextStyle
                        .copyWith(color: effectiveTextColor)
                    : effectiveBaconBadgeSize.textStyle
                        .copyWith(color: effectiveTextColor),
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
