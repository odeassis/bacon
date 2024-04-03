import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/tag/tag_size_properties.dart';
import 'package:bacon/src/theme/components/tag/tag_sizes.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/shape_decoration.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:flutter/material.dart';

enum BaconTagSize {
  x2s,
  xs,
  sm,
}

class BaconTag extends StatelessWidget {
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
  final BaconTagSize? tagSize;

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

  /// Creates a Bacon Design tag.
  const BaconTag({
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

  BaconTagSizeProperties _getBaconTagSize(
      BuildContext context, BaconTagSize? baconTagSize) {
    return switch (baconTagSize) {
      BaconTagSize.x2s => context.baconTheme?.tagTheme.sizes.x2s ??
          BaconTagSizes(tokens: BaconTokens.light).x2s,
      BaconTagSize.xs => context.baconTheme?.tagTheme.sizes.xs ??
          BaconTagSizes(tokens: BaconTokens.light).xs,
      BaconTagSize.sm => context.baconTheme?.tagTheme.sizes.sm ??
          BaconTagSizes(tokens: BaconTokens.light).sm,
      _ => context.baconTheme?.tagTheme.sizes.xs ??
          BaconTagSizes(tokens: BaconTokens.light).xs,
    };
  }

  @override
  Widget build(BuildContext context) {
    final BaconTagSizeProperties effectiveBaconTagSize =
        _getBaconTagSize(context, tagSize);

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? effectiveBaconTagSize.borderRadius;

    final Color effectiveBackgroundColor = background ??
        context.baconTheme?.tagTheme.colors.background ??
        BaconTokens.light.modes.background.primary;

    final Color effectiveTextColor =
        context.baconTheme?.tagTheme.colors.textColor ??
            BaconTokens.light.modes.content.primary;

    final Color effectiveIconColor =
        context.baconTheme?.tagTheme.colors.iconColor ??
            BaconTokens.light.modes.content.primary;

    final double effectiveHeight = height ?? effectiveBaconTagSize.height;

    final double effectiveGap = gap ?? effectiveBaconTagSize.gap;

    final EdgeInsetsGeometry effectivePadding =
        padding ?? effectiveBaconTagSize.padding;

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
                size: effectiveBaconTagSize.iconSize,
              ),
              child: DefaultTextStyle(
                style: isUpperCase
                    ? effectiveBaconTagSize.upperCaseTextStyle
                        .copyWith(color: effectiveTextColor)
                    : effectiveBaconTagSize.textStyle
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
