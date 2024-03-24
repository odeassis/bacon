import 'package:bacon/src/theme/components/badge/badge_size.dart';
import 'package:bacon/src/theme/components/badge/badge_size_properties.dart';
import 'package:bacon/src/theme/theme.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/shape_decoration.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:flutter/material.dart';

enum BaconBadgeSize {
  md,
  sm,
}

class BaconBadge extends StatelessWidget {
  /// Whether to use the upper case text style for the tag.
  final bool isUpperCase;

  /// The border radius of the tag.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the tag.
  final Color? backgroundColor;

  /// The height of the tag.
  final double? height;

  /// The width of the tag.
  final double? width;

  /// The gap between the [leading], [label] and [trailing] widgets of the tag.
  final double? gap;

  /// The padding of the tag.
  final EdgeInsetsGeometry? padding;

  /// The size of the tag.
  final BaconBadgeSize? tagSize;

  /// The custom decoration of the tag.
  final Decoration? decoration;

  /// The semantic label for the tag.
  final String? semanticLabel;

  /// The callback that is called when the tag is tapped or pressed.
  final VoidCallback? onTap;

  /// The callback that is called when the tag is long-pressed.
  final VoidCallback? onLongPress;

  /// The widget to display before the [label] widget of the tag.
  final Widget? leading;

  /// The primary content of the tag widget.
  final Widget? label;

  /// The widget to display after the [label] widget of the tag.
  final Widget? trailing;

  /// Creates a Moon Design tag.
  const BaconBadge({
    super.key,
    this.isUpperCase = true,
    this.borderRadius,
    this.backgroundColor,
    this.height,
    this.width,
    this.gap,
    this.padding,
    this.tagSize,
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
          BaconBadgeSizes(tokens: BaconTokes.light).md,
      _ => context.baconTheme?.badgeTheme.sizes.sm ??
          BaconBadgeSizes(tokens: BaconTokes.light).sm,
    };
  }

  @override
  Widget build(BuildContext context) {
    final BaconBadgeSizeProperties effectiveBaconBadgeSize =
        _getBaconBadgeSize(context, tagSize);

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? effectiveBaconBadgeSize.borderRadius;

    final Color effectiveBackgroundColor = backgroundColor ??
        context.baconTheme?.badgeTheme.colors.backgroundColor ??
        BaconTokes.light.backgroundColor.brandLight;

    final Color effectiveTextColor =
        context.baconTheme?.badgeTheme.colors.textColor ??
            BaconTokes.light.contentColor.primary;

    final Color effectiveIconColor =
        context.baconTheme?.badgeTheme.colors.iconColor ??
            BaconTokes.light.contentColor.primary;

    final double effectiveHeight = height ?? effectiveBaconBadgeSize.height;

    final double effectiveGap = gap ?? effectiveBaconBadgeSize.gap;

    final EdgeInsetsGeometry effectivePadding =
        padding ?? effectiveBaconBadgeSize.padding;

    final EdgeInsets resolvedDirectionalPadding =
        effectivePadding.resolve(Directionality.of(context));

    final EdgeInsetsGeometry correctedPadding = padding == null
        ? EdgeInsetsDirectional.fromSTEB(
            leading == null && label != null
                ? resolvedDirectionalPadding.left
                : 0,
            resolvedDirectionalPadding.top,
            trailing == null && label != null
                ? resolvedDirectionalPadding.right
                : 0,
            resolvedDirectionalPadding.bottom,
          )
        : resolvedDirectionalPadding;

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
            constraints: BoxConstraints(minWidth: effectiveHeight),
            decoration: decoration ??
                ShapeDecorationWithPremultipliedAlpha(
                  color: effectiveBackgroundColor,
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
                    if (leading != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: effectiveGap),
                        child: leading,
                      ),
                    if (label != null) label!,
                    if (trailing != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: effectiveGap),
                        child: trailing,
                      ),
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
