import 'package:flutter/material.dart';
import 'package:hive/src/theme/theme.dart';

import '../../theme/components/components.dart' as components;
import '../../utils/utils.dart' as utils;

enum TagSize {
  x2s,
  xs,
  sm,
}

class HiveTag extends StatelessWidget {
  /// Whether to use the upper case text style for the tag.
  final bool isUpperCase;

  /// The border radius of the tag.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the tag.
  final Color? background;

  /// The height of the tag.
  final double? height;

  /// The width of the tag.
  final double? width;

  /// The gap between the [leading], [label] and [trailing] widgets of the tag.
  final double? gap;

  /// The padding of the tag.
  final EdgeInsetsGeometry? padding;

  /// The size of the tag.
  final TagSize? tagSize;

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

  /// Creates a Hive Design tag.
  const HiveTag({
    super.key,
    this.isUpperCase = true,
    this.borderRadius,
    this.background,
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

  components.HiveTagSizeProperties _getTagSize(
      BuildContext context, TagSize? tagSize) {
    return switch (tagSize) {
      TagSize.x2s => context.hiveTheme?.tagTheme.sizes.x2s ??
          components.HiveTagSizes(tokens: HiveTokens.light).x2s,
      TagSize.xs => context.hiveTheme?.tagTheme.sizes.xs ??
          components.HiveTagSizes(tokens: HiveTokens.light).xs,
      TagSize.sm => context.hiveTheme?.tagTheme.sizes.sm ??
          components.HiveTagSizes(tokens: HiveTokens.light).sm,
      _ => context.hiveTheme?.tagTheme.sizes.xs ??
          components.HiveTagSizes(tokens: HiveTokens.light).xs,
    };
  }

  @override
  Widget build(BuildContext context) {
    final components.HiveTagSizeProperties effectiveTagSize =
        _getTagSize(context, tagSize);

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? effectiveTagSize.borderRadius;

    final Color effectiveBackgroundColor = background ??
        context.hiveTheme?.tagTheme.colors.background ??
        HiveTokens.light.modes.background.primary;

    final Color effectiveTextColor =
        context.hiveTheme?.tagTheme.colors.textColor ??
            HiveTokens.light.modes.content.primary;

    final Color effectiveIconColor =
        context.hiveTheme?.tagTheme.colors.iconColor ??
            HiveTokens.light.modes.content.primary;

    final double effectiveHeight = height ?? effectiveTagSize.height;

    final double effectiveGap = gap ?? effectiveTagSize.gap;

    final EdgeInsetsGeometry effectivePadding =
        padding ?? effectiveTagSize.padding;

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
            width: width,
            height: effectiveHeight,
            padding: correctedPadding,
            constraints: BoxConstraints(minWidth: effectiveHeight),
            decoration: decoration ??
                utils.ShapeDecorationWithPremultipliedAlpha(
                  color: effectiveBackgroundColor,
                  shape: utils.HiveSquircleBorder(
                    borderRadius:
                        effectiveBorderRadius.squircleBorderRadius(context),
                  ),
                ),
            child: IconTheme(
              data: IconThemeData(
                color: effectiveIconColor,
                size: effectiveTagSize.iconSize,
              ),
              child: DefaultTextStyle(
                style: isUpperCase
                    ? effectiveTagSize.upperCaseTextStyle
                        .copyWith(color: effectiveTextColor)
                    : effectiveTagSize.textStyle
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
