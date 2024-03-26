import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/tokens/variables/primitives/shape.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:flutter/material.dart';

class BaconBadgeOutlined extends StatelessWidget {
  /// Whether to use the upper case text style for the badge.
  final bool isUpperCase;

  /// The border radius of the badge.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the badge.
  final Color? backgroundColor;

  /// The border color of the badge.
  final Color? borderColor;

  ///
  final Color? iconColor;

  /// The text color of the badge.
  final Color? textColor;

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
  const BaconBadgeOutlined({
    super.key,
    this.isUpperCase = true,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
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

  @override
  Widget build(BuildContext context) {
    final effectiveBackgroundColor =
        backgroundColor ?? context.baconTheme?.tokens.backgroundColor.primary;

    final effectiveBorderRadius = borderRadius ??
        context.baconTheme?.tokens.borderRadius.xl ??
        const BorderRadius.all(
          Radius.circular(baconShape24),
        );

    final effectiveBorderColor = borderColor ??
        context.baconTheme?.tokens.borderColor.brand ??
        Colors.transparent;

    final effectiveTextColor = textColor ??
        context.baconTheme?.tokens.contentColor.brand ??
        Colors.black;

    final effectiveIconColor =
        iconColor ?? context.baconTheme?.tokens.contentColor.brand;

    final effectiveDecoration = decoration ??
        ShapeDecoration(
          color: effectiveBackgroundColor,
          shape: BaconSquircleBorder(
            borderRadius: effectiveBorderRadius.squircleBorderRadius(context),
            borderAlign: BorderAlign.inside,
            side: BorderSide(
              color: effectiveBorderColor,
              width: 1,
            ),
          ),
        );
    return BaconBadge(
      isUpperCase: isUpperCase,
      borderRadius: borderRadius,
      backgroundColor: effectiveBackgroundColor,
      textColor: effectiveTextColor,
      iconColor: effectiveIconColor,
      height: height,
      width: width,
      gap: gap,
      padding: padding,
      badgeSize: badgeSize,
      decoration: effectiveDecoration,
      semanticLabel: semanticLabel,
      onTap: onTap,
      onLongPress: onLongPress,
      leading: leading,
      label: label,
      trailing: trailing,
    );
  }
}
