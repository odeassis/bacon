import 'package:bacon/bacon.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:flutter/material.dart';

class BaconBadgeLight extends StatelessWidget {
  /// Whether to use the upper case text style for the badge.
  final bool isUpperCase;

  /// Add or remove the border of the badge.
  final bool border;

  /// The border radius of the badge.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the badge.
  final Color? background;

  /// The border color of the badge.
  final Color? borderColor;

  /// The text color of the badge.
  final Color? textColor;

  ///
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
  const BaconBadgeLight({
    super.key,
    this.isUpperCase = true,
    this.border = false,
    this.borderRadius,
    this.background,
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
    final effectiveBackground = background ??
        context.background?.brandLight ??
        BaconTokens.light.modes.accent.blueLight;

    final effectiveBorderRadius =
        borderRadius ?? context.radii?.xl ?? BaconTokens.light.shape.radii.xl;

    final effectiveBorderColor = borderColor ??
        context.borderColors?.brand ??
        BaconTokens.light.modes.border.brand;

    final effectiveTextColor = textColor ??
        context.contentColors?.brand ??
        BaconTokens.light.modes.content.brand;

    final effectiveIconColor = iconColor ??
        context.contentColors?.brand ??
        BaconTokens.light.modes.content.brand;

    final effectiveDecoration = border
        ? decoration ??
            ShapeDecoration(
              color: effectiveBackground,
              shape: BaconSquircleBorder(
                borderRadius:
                    effectiveBorderRadius.squircleBorderRadius(context),
                side: BorderSide(
                  color: effectiveBorderColor,
                  width: 1,
                ),
              ),
            )
        : null;
    return BaconBadge(
      isUpperCase: isUpperCase,
      borderRadius: borderRadius,
      background: effectiveBackground,
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
