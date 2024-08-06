import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../theme/tokens/tokens.dart';
import '../../utils/utils.dart' as utils;

class HiveDrawer extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;

  final Color? backgroundColor;

  final Color? barrierColor;

  final Decoration? decoration;

  final double? width;

  final List<BoxShadow>? drawerShadows;

  final String? semanticLabel;

  final Widget child;

  const HiveDrawer({
    super.key,
    required this.child,
    this.borderRadius,
    this.backgroundColor,
    this.barrierColor,
    this.decoration,
    this.width,
    this.drawerShadows,
    this.semanticLabel,
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius = borderRadius ??
        context.hiveTheme?.drawerTheme.properties.borderRadius ??
        BorderRadius.zero;

    final Color effectiveBackgroundColor = backgroundColor ??
        context.hiveTheme?.drawerTheme.colors.backgroundColor ??
        HiveTokens.light.modes.background.primary;

    final Color effectiveTextColor =
        context.hiveTheme?.drawerTheme.colors.textColor ??
            HiveTokens.light.modes.content.primary;

    final Color effectiveIconColor =
        context.hiveTheme?.drawerTheme.colors.iconColor ??
            HiveTokens.light.modes.content.secondary;

    final double effectiveWidthFromTheme =
        context.hiveTheme?.drawerTheme.properties.width ?? 448;

    final double effectiveWidth = width ??
        (MediaQuery.of(context).size.width < effectiveWidthFromTheme
            ? MediaQuery.of(context).size.width
            : effectiveWidthFromTheme);

    final List<BoxShadow> effectiveDrawerShadows = drawerShadows ??
        context.hiveTheme?.drawerTheme.shadows.drawerShadows ??
        HiveShadows.light.lg;

    final TextStyle effectiveTextStyle =
        context.hiveTheme?.drawerTheme.properties.textStyle ??
            HiveTokens.light.typography.label.lg;

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
                utils.ShapeDecorationWithPremultipliedAlpha(
                  color: effectiveBackgroundColor,
                  shadows: effectiveDrawerShadows,
                  shape: utils.HiveSquircleBorder(
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
