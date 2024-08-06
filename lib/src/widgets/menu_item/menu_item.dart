import 'package:flutter/material.dart';
import 'package:hive/src/theme/theme.dart';

import '../../theme/effects/effects.dart';
import '../../utils/utils.dart' as utils;

class HiveMenuItem extends StatefulWidget {
  /// Defines how the widgets of the menu item are aligned along the cross axis.
  ///
  /// Defaults to the [CrossAxisAlignment.center].
  final CrossAxisAlignment? menuItemCrossAxisAlignment;

  /// Defines how the [label] and [content] widgets of the menu item are aligned along the cross axis within [label] and
  /// [content] slots.
  ///
  /// Defaults to the [CrossAxisAlignment.start].
  final CrossAxisAlignment? labelAndContentCrossAxisAlignment;

  /// Whether the menu item should absorb gestures. If this is true the menu item children will not receive gestures.
  final bool absorbGestures;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// The border radius of the menu item.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the menu item.
  final Color? background;

  /// The color of the menu item hover effect.
  final Color? hoverEffectColor;

  /// The custom decoration of the menu item.
  final Decoration? decoration;

  /// The height of the menu item.
  final double? height;

  /// The width of the menu item.
  final double? width;

  /// The horizontal gap between the [leading], [label] and [trailing] widgets of the menu item.
  final double? horizontalGap;

  /// The vertical gap between the [label] and [content] widgets of the menu item.
  final double? verticalGap;

  /// The duration of the menu item hover effect.
  final Duration? hoverEffectDuration;

  /// The curve of the menu item hover effect.
  final Curve? hoverEffectCurve;

  /// The padding of the menu item.
  final EdgeInsetsGeometry? menuItemPadding;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// The semantic label for the menu item.
  final String? semanticLabel;

  /// The callback that is called when the menu item is tapped or pressed. Null value disables the menu item.
  final VoidCallback? onTap;

  /// The widget to display before the [label] widget of the menu item.
  final Widget? leading;

  /// The primary content of the menu item header.
  final Widget label;

  /// The widget to display below the [label] widget of the menu item. The secondary content of the menu item header.
  final Widget? content;

  /// The widget to display after the [label] widget of the menu item.
  final Widget? trailing;

  /// Creates a Hive Design menu item.
  const HiveMenuItem({
    super.key,
    this.menuItemCrossAxisAlignment,
    this.labelAndContentCrossAxisAlignment,
    this.absorbGestures = false,
    this.autofocus = false,
    this.borderRadius,
    this.background,
    this.hoverEffectColor,
    this.decoration,
    this.height,
    this.width,
    this.horizontalGap,
    this.verticalGap,
    this.hoverEffectDuration,
    this.hoverEffectCurve,
    this.menuItemPadding,
    this.focusNode,
    this.semanticLabel,
    this.onTap,
    this.leading,
    required this.label,
    this.content,
    this.trailing,
  }) : assert(
          labelAndContentCrossAxisAlignment != CrossAxisAlignment.baseline,
          'The CrossAxisAlignment.baseline is not supported since the label and content of menu item '
          'are aligned in a column, not in a row. Try using another constant.',
        );

  static Iterable<Widget> divideMenuItems({
    required BuildContext context,
    required Iterable<Widget> menuItems,
    Color? color,
    double? width,
  }) {
    menuItems = menuItems.toList();

    if (menuItems.isEmpty || menuItems.length == 1) return menuItems;

    final Color effectiveColor = color ??
        context.hiveTheme?.menuItemTheme.colors.dividerColor ??
        HiveTokens.light.modes.border.secondary;

    Widget wrapMenuItem(Widget menuItems) {
      return DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          border: Border(
            bottom: Divider.createBorderSide(
              context,
              color: effectiveColor,
              width: width,
            ),
          ),
        ),
        child: menuItems,
      );
    }

    return <Widget>[
      ...menuItems.take(menuItems.length - 1).map(wrapMenuItem),
      menuItems.last,
    ];
  }

  @override
  State<HiveMenuItem> createState() => _HiveMenuItemState();
}

class _HiveMenuItemState extends State<HiveMenuItem>
    with TickerProviderStateMixin {
  final utils.ColorTweenWithPremultipliedAlpha _backgroundColorTween =
      utils.ColorTweenWithPremultipliedAlpha();

  AnimationController? _animationController;
  Animation<Color?>? _backgroundColor;

  FocusNode get _effectiveFocusNode => widget.focusNode ?? FocusNode();

  void _handleActiveStatus(bool isActive) {
    isActive
        ? _animationController!.forward()
        : _animationController!.reverse();
  }

  @override
  void dispose() {
    _animationController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius = widget.borderRadius ??
        context.hiveTheme?.menuItemTheme.properties.borderRadius ??
        HiveTokens.light.shape.radii.sm;

    final double effectiveMinimumHeaderHeight = widget.height ??
        context.hiveTheme?.menuItemTheme.properties.minimumHeight ??
        HiveTokens.light.scale.component.md;

    final double effectiveVerticalGap = widget.verticalGap ??
        context.hiveTheme?.menuItemTheme.properties.verticalGap ??
        HiveTokens.light.scale.gap.xs;

    final EdgeInsetsGeometry effectiveHeaderPadding = widget.menuItemPadding ??
        context.hiveTheme?.menuItemTheme.properties.padding ??
        EdgeInsets.all(HiveTokens.light.scale.component.x3s);

    final EdgeInsets resolvedDirectionalHeaderPadding =
        effectiveHeaderPadding.resolve(Directionality.of(context));

    final Color effectiveBackgroundColor = widget.background ??
        context.hiveTheme?.menuItemTheme.colors.background ??
        Colors.transparent;

    final Color effectiveIconColor =
        context.hiveTheme?.menuItemTheme.colors.iconColor ??
            HiveTokens.light.modes.content.primary;

    final Color effectiveLabelTextColor =
        context.hiveTheme?.menuItemTheme.colors.labelTextColor ??
            HiveTokens.light.modes.content.primary;

    final Color effectiveContentTextColor =
        context.hiveTheme?.menuItemTheme.colors.contentTextColor ??
            HiveTokens.light.modes.content.secondary;

    final TextStyle effectiveLabelTextStyle =
        context.hiveTheme?.menuItemTheme.properties.labelTextStyle ??
            HiveTokens.light.typography.label.md;

    final TextStyle effectiveContentTextStyle =
        context.hiveTheme?.menuItemTheme.properties.contentTextStyle ??
            HiveTokens.light.typography.label.sm;

    final Color effectiveHoverEffectColor = widget.hoverEffectColor ??
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlHoverEffect
            .primaryHoverColor;

    final Color resolvedHoverColor = Color.alphaBlend(
        effectiveHoverEffectColor, widget.background ?? Colors.transparent);

    final Duration effectiveHoverEffectDuration = widget.hoverEffectDuration ??
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlHoverEffect
            .hoverDuration;

    final Curve effectiveHoverEffectCurve = widget.hoverEffectCurve ??
        HiveEffectsTheme(tokens: HiveTokens.light)
            .controlHoverEffect
            .hoverCurve;

    _animationController ??= AnimationController(
        duration: effectiveHoverEffectDuration, vsync: this);

    _backgroundColor ??= _animationController!.drive(_backgroundColorTween
        .chain(CurveTween(curve: effectiveHoverEffectCurve)));

    _backgroundColorTween
      ..begin = effectiveBackgroundColor
      ..end = resolvedHoverColor;

    return Semantics(
      label: widget.semanticLabel,
      enabled: widget.onTap != null,
      child: utils.HiveBaseControl(
        onTap: widget.onTap,
        propagateGesturesToChild: !widget.absorbGestures,
        autofocus: widget.autofocus,
        focusNode: _effectiveFocusNode,
        borderRadius: effectiveBorderRadius.squircleBorderRadius(context),
        builder: (
          BuildContext context,
          bool isEnabled,
          bool isHovered,
          bool isFocused,
          bool isPressed,
        ) {
          final bool isActive = isHovered || isFocused;

          _handleActiveStatus(isActive);

          return AnimatedBuilder(
            animation: _animationController!,
            builder: (BuildContext context, Widget? child) {
              return Container(
                height: widget.height,
                width: widget.width,
                constraints: BoxConstraints(
                  minHeight: effectiveMinimumHeaderHeight,
                ),
                padding: resolvedDirectionalHeaderPadding,
                decoration: widget.decoration ??
                    ShapeDecoration(
                      color: _backgroundColor!.value,
                      shape: utils.HiveSquircleBorder(
                        borderRadius:
                            effectiveBorderRadius.squircleBorderRadius(context),
                      ),
                    ),
                child: child,
              );
            },
            child: IconTheme(
              data: IconThemeData(color: effectiveIconColor),
              child: DefaultTextStyle(
                style: effectiveLabelTextStyle.copyWith(
                    color: effectiveLabelTextColor),
                child: Row(
                  crossAxisAlignment: widget.menuItemCrossAxisAlignment ??
                      CrossAxisAlignment.center,
                  children: [
                    if (widget.leading != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: widget.horizontalGap ??
                              resolvedDirectionalHeaderPadding.left,
                        ),
                        child: widget.leading,
                      ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment:
                            widget.labelAndContentCrossAxisAlignment ??
                                CrossAxisAlignment.start,
                        children: [
                          widget.label,
                          if (widget.content != null)
                            DefaultTextStyle(
                              style: effectiveContentTextStyle.copyWith(
                                  color: effectiveContentTextColor),
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: effectiveVerticalGap),
                                child: widget.content,
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (widget.trailing != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: widget.horizontalGap ??
                              resolvedDirectionalHeaderPadding.right,
                        ),
                        child: widget.trailing,
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
