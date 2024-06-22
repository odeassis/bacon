import 'package:bacon/bacon.dart';
import 'package:flutter/material.dart';

class BaconDrawer extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;

  final Color? backgroundColor;

  final Color? barrierColor;

  final Decoration? decoration;

  final double? width;

  final List<BoxShadow>? drawerShadows;

  final String? semanticLabel;

  final Widget child;

  const BaconDrawer({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.barrierColor,
    this.decoration,
    this.width,
    this.drawerShadows,
    this.semanticLabel,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius = borderRadius ??
        context.baconTheme?.drawerTheme.properties.borderRadius ??
        BorderRadius.zero;

    final Color effectiveBackgroundColor = backgroundColor ??
        context.baconTheme?.drawerTheme.colors.backgroundColor ??
        BaconTokens.light.modes.background.primary;

    final Color effectiveTextColor =
        context.baconTheme?.drawerTheme.colors.textColor ??
            BaconTokens.light.modes.content.primary;

    final Color effectiveIconColor =
        context.baconTheme?.drawerTheme.colors.iconColor ??
            BaconTokens.light.modes.content.secondary;

    final double effectiveWidthFromTheme =
        context.baconTheme?.drawerTheme.properties.width ?? 448;

    final double effectiveWidth = width ??
        (MediaQuery.of(context).size.width < effectiveWidthFromTheme
            ? MediaQuery.of(context).size.width
            : effectiveWidthFromTheme);

    final List<BoxShadow> effectiveDrawerShadows = drawerShadows ??
        context.baconTheme?.drawerTheme.shadows.drawerShadows ??
        BaconShadows.light.lg;

    final TextStyle effectiveTextStyle =
        context.baconTheme?.drawerTheme.properties.textStyle ??
            BaconTokens.light.typography.label.lg;

    return Semantics(
      explicitChildNodes: true,
      namesRoute: true,
      scopesRoute: true,
      label: semanticLabel,
      child: IconTheme(
        data: IconThemeData(color: effectiveIconColor),
        child: DefaultTextStyle(
          style: effectiveTextStyle.copyWith(color: effectiveTextColor),
          child: Container(
            width: effectiveWidth,
            decoration: decoration ??
                ShapeDecorationWithPremultipliedAlpha(
                  color: effectiveBackgroundColor,
                  shadows: effectiveDrawerShadows,
                  shape: BaconSquircleBorder(
                    borderRadius:
                        effectiveBorderRadius.squircleBorderRadius(context),
                  ),
                ),
            child: child,
          ),
        ),
      ),
    );
  }
}
