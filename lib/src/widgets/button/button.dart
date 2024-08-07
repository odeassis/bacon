import 'package:flutter/material.dart';

import '../../theme/components/components.dart';
import '../../theme/effects/effects.dart';
import '../../theme/theme.dart';
import '../../utils/utils.dart' as utils;

enum HiveButtonSize {
  sm,
  md,
}

enum HiveButtonStyle {
  filled,
  outlined,
  light,
}

enum HiveButtonType {
  primary,
  neutral,
  error,
}

class HiveButton extends StatefulWidget {
  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// Whether the button is focusable.
  final bool isFocusable;

  /// Whether to ensure a minimum touch target size for the button.
  final bool ensureMinimalTouchTargetSize;

  /// Whether the button takes up the full width of its parent container.
  final bool isFullWidth;

  /// Whether to show a border around the button.
  final bool showBorder;

  /// Whether to show a focus outline effect when the button is focused.
  final bool showFocusEffect;

  /// Whether to show a continuous pulsating effect.
  final bool showPulseEffect;

  /// Whether to show a jiggle during the button pulse effect.
  final bool showPulseEffectJiggle;

  /// Whether to show a scale effect when the button is tapped or long-pressed.
  final bool showScaleEffect;

  /// The border radius of the button.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the button.
  final Color? backgroundColor;

  /// The border color of the button.
  final Color? borderColor;

  /// The color of the button focus effect.
  final Color? focusEffectColor;

  /// The color of the button hover effect.
  final Color? hoverEffectColor;

  /// The color of the button pulse effect.
  final Color? pulseEffectColor;

  /// The text color of the button.
  final Color? textColor;

  /// The text color of the button on hover.
  final Color? hoverTextColor;

  /// The custom decoration of the button.
  final Decoration? decoration;

  /// The border width of the button.
  final double? borderWidth;

  /// The opacity value of the button when disabled.
  final double? disabledOpacityValue;

  /// The gap between the [leading], [label] and [trailing] widgets of the button.
  final double? gap;

  /// The height of the button.
  final double? height;

  /// The width of the button.
  final double? width;

  /// The minimum size of the button touch target.
  final double minTouchTargetSize;

  /// The extent of the button focus effect.
  final double? focusEffectExtent;

  /// The extent of the button pulse effect.
  final double? pulseEffectExtent;

  /// The degree of scaling applied during the button scale effect.
  final double? scaleEffectScalar;

  /// The duration of the button focus effect.
  final Duration? focusEffectDuration;

  /// The duration of the button hover effect.
  final Duration? hoverEffectDuration;

  /// The duration of the button pulse effect.
  final Duration? pulseEffectDuration;

  /// The duration of the button scale effect.
  final Duration? scaleEffectDuration;

  /// The curve of the button focus effect.
  final Curve? focusEffectCurve;

  /// The curve of the button hover effect.
  final Curve? hoverEffectCurve;

  /// The curve of the button pulse effect.
  final Curve? pulseEffectCurve;

  /// The curve of the button scale effect.
  final Curve? scaleEffectCurve;

  /// The padding of the button.
  final EdgeInsetsGeometry? padding;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// The size of the button.
  final HiveButtonSize? buttonSize;

  /// The semantic label for the button.
  final String? semanticLabel;

  /// The callback that is called when the button is tapped or pressed.
  final VoidCallback? onTap;

  /// The callback that is called when the button is long-pressed.
  final VoidCallback? onLongPress;

  /// The widget to display before the [label] widget of the button.
  final Widget? leading;

  /// The primary content of the button widget.
  final Widget? label;

  /// The widget to display after the [label] widget of the button.
  final Widget? trailing;

  final HiveButtonStyle? style;

  final HiveButtonType? type;

  const HiveButton({
    super.key,
    this.autofocus = false,
    this.isFocusable = true,
    this.ensureMinimalTouchTargetSize = false,
    this.isFullWidth = false,
    this.showBorder = false,
    this.showFocusEffect = true,
    this.showPulseEffect = false,
    this.showPulseEffectJiggle = true,
    this.showScaleEffect = true,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.focusEffectColor,
    this.hoverEffectColor,
    this.pulseEffectColor,
    this.textColor,
    this.hoverTextColor,
    this.decoration,
    this.borderWidth,
    this.disabledOpacityValue,
    this.gap,
    this.height,
    this.width,
    this.minTouchTargetSize = 40,
    this.focusEffectExtent,
    this.pulseEffectExtent,
    this.scaleEffectScalar,
    this.focusEffectDuration,
    this.hoverEffectDuration,
    this.pulseEffectDuration,
    this.scaleEffectDuration,
    this.focusEffectCurve,
    this.hoverEffectCurve,
    this.pulseEffectCurve,
    this.scaleEffectCurve,
    this.padding,
    this.focusNode,
    this.buttonSize,
    this.semanticLabel,
    this.onTap,
    this.onLongPress,
    this.leading,
    this.label,
    this.trailing,
    this.type = HiveButtonType.primary,
  }) : style = HiveButtonStyle.filled;

  const HiveButton.icon({
    super.key,
    this.autofocus = false,
    this.isFocusable = true,
    this.ensureMinimalTouchTargetSize = false,
    this.isFullWidth = false,
    this.showBorder = false,
    this.showFocusEffect = true,
    this.showPulseEffect = false,
    this.showPulseEffectJiggle = true,
    this.showScaleEffect = true,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.focusEffectColor,
    this.hoverEffectColor,
    this.pulseEffectColor,
    this.hoverTextColor,
    this.borderWidth,
    this.disabledOpacityValue,
    this.gap,
    this.height,
    this.width,
    this.minTouchTargetSize = 40,
    this.focusEffectExtent,
    this.pulseEffectExtent,
    this.scaleEffectScalar,
    this.focusEffectDuration,
    this.hoverEffectDuration,
    this.pulseEffectDuration,
    this.scaleEffectDuration,
    this.focusEffectCurve,
    this.hoverEffectCurve,
    this.pulseEffectCurve,
    this.scaleEffectCurve,
    this.padding,
    this.focusNode,
    this.buttonSize,
    this.decoration,
    this.semanticLabel,
    this.onTap,
    this.onLongPress,
    Color? iconColor,
    Widget? icon,
    this.type = HiveButtonType.primary,
  })  : textColor = iconColor,
        leading = icon,
        label = null,
        style = HiveButtonStyle.filled,
        trailing = null;

  const HiveButton.light({
    super.key,
    this.autofocus = false,
    this.isFocusable = true,
    this.ensureMinimalTouchTargetSize = false,
    this.isFullWidth = false,
    this.showBorder = false,
    this.showFocusEffect = true,
    this.showPulseEffect = false,
    this.showPulseEffectJiggle = true,
    this.showScaleEffect = true,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.focusEffectColor,
    this.hoverEffectColor,
    this.pulseEffectColor,
    this.textColor,
    this.hoverTextColor,
    this.decoration,
    this.borderWidth,
    this.disabledOpacityValue,
    this.gap,
    this.height,
    this.width,
    this.minTouchTargetSize = 40,
    this.focusEffectExtent,
    this.pulseEffectExtent,
    this.scaleEffectScalar,
    this.focusEffectDuration,
    this.hoverEffectDuration,
    this.pulseEffectDuration,
    this.scaleEffectDuration,
    this.focusEffectCurve,
    this.hoverEffectCurve,
    this.pulseEffectCurve,
    this.scaleEffectCurve,
    this.padding,
    this.focusNode,
    this.buttonSize,
    this.semanticLabel,
    this.onTap,
    this.onLongPress,
    this.leading,
    this.label,
    this.trailing,
    this.type = HiveButtonType.primary,
  }) : style = HiveButtonStyle.light;

  const HiveButton.outlined({
    super.key,
    this.autofocus = false,
    this.isFocusable = true,
    this.ensureMinimalTouchTargetSize = false,
    this.isFullWidth = false,
    this.showBorder = true,
    this.showFocusEffect = true,
    this.showPulseEffect = false,
    this.showPulseEffectJiggle = true,
    this.showScaleEffect = true,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.focusEffectColor,
    this.hoverEffectColor,
    this.pulseEffectColor,
    this.textColor,
    this.hoverTextColor,
    this.decoration,
    this.borderWidth,
    this.disabledOpacityValue,
    this.gap,
    this.height,
    this.width,
    this.minTouchTargetSize = 40,
    this.focusEffectExtent,
    this.pulseEffectExtent,
    this.scaleEffectScalar,
    this.focusEffectDuration,
    this.hoverEffectDuration,
    this.pulseEffectDuration,
    this.scaleEffectDuration,
    this.focusEffectCurve,
    this.hoverEffectCurve,
    this.pulseEffectCurve,
    this.scaleEffectCurve,
    this.padding,
    this.focusNode,
    this.buttonSize,
    this.semanticLabel,
    this.onTap,
    this.onLongPress,
    this.leading,
    this.label,
    this.trailing,
    this.type = HiveButtonType.primary,
  }) : style = HiveButtonStyle.outlined;

  @override
  State<HiveButton> createState() => _HiveButtonState();
}

class _HiveButtonState extends State<HiveButton>
    with SingleTickerProviderStateMixin {
  final utils.ColorTweenWithPremultipliedAlpha _backgroundColorTween =
      utils.ColorTweenWithPremultipliedAlpha();
  final utils.ColorTweenWithPremultipliedAlpha _textColorTween =
      utils.ColorTweenWithPremultipliedAlpha();

  Animation<Color?>? _backgroundColor;
  Animation<Color?>? _textColor;

  AnimationController? _animationController;

  bool get _isEnabled => widget.onTap != null || widget.onLongPress != null;

  void _handleHoverEffect(bool shouldAnimate) {
    shouldAnimate
        ? _animationController?.forward()
        : _animationController?.reverse();
  }

  HiveButtonSizeProperties _getHiveButtonSize(
      BuildContext context, HiveButtonSize? hiveButtonSize) {
    switch (hiveButtonSize) {
      case HiveButtonSize.sm:
        return context.hiveTheme?.buttonTheme.sizes.sm ??
            HiveButtonSizes(tokens: HiveTokens.light).sm;
      case HiveButtonSize.md:
        return context.hiveTheme?.buttonTheme.sizes.md ??
            HiveButtonSizes(tokens: HiveTokens.light).md;
      default:
        return context.hiveTheme?.buttonTheme.sizes.md ??
            HiveButtonSizes(tokens: HiveTokens.light).md;
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HiveButtonSizeProperties effectiveHiveButtonSize =
        _getHiveButtonSize(context, widget.buttonSize);

    final BorderRadiusGeometry effectiveBorderRadius =
        widget.borderRadius ?? effectiveHiveButtonSize.borderRadius;

    final Color effectiveBackgroundColor =
        widget.backgroundColor ?? HiveTokens.light.modes.background.brand;

    final Color effectiveBorderColor =
        widget.borderColor ?? HiveTokens.light.modes.border.primary;

    final double effectiveBorderWidth = widget.borderWidth ??
        context.hiveTheme?.tokens.shape.radii.defaultBorderWidth ??
        HiveTokens.light.shape.radii.defaultBorderWidth;

    final Color effectiveTextColor = widget.textColor ??
        context.hiveTheme?.tokens.modes.content.inverse ??
        HiveTokens.light.modes.content.inverse;

    final Color effectiveHoverEffectColor =
        widget.hoverEffectColor ?? HiveTokens.light.modes.action.hoverOnColor;

    Color hoverColor = Color.alphaBlend(
      effectiveHoverEffectColor,
      effectiveBackgroundColor,
    );

    final Color focusEffectColor =
        widget.focusEffectColor ?? HiveTokens.light.modes.action.focusRingBrand;

    final double effectiveHeight =
        widget.height ?? effectiveHiveButtonSize.height;

    final double effectiveGap = widget.gap ?? effectiveHiveButtonSize.gap;

    final EdgeInsetsGeometry effectivePadding =
        widget.padding ?? effectiveHiveButtonSize.padding;

    final EdgeInsets resolvedDirectionalPadding =
        effectivePadding.resolve(Directionality.of(context));

    final EdgeInsetsGeometry correctedPadding = widget.padding == null
        ? EdgeInsetsDirectional.fromSTEB(
            widget.leading == null && widget.label != null
                ? resolvedDirectionalPadding.left
                : 0,
            resolvedDirectionalPadding.top,
            widget.trailing == null && widget.label != null
                ? resolvedDirectionalPadding.right
                : 0,
            resolvedDirectionalPadding.bottom,
          )
        : resolvedDirectionalPadding;

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

    _textColor ??= _animationController!.drive(
        _textColorTween.chain(CurveTween(curve: effectiveHoverEffectCurve)));

    _backgroundColorTween
      ..begin = effectiveBackgroundColor
      ..end = hoverColor;

    _textColorTween
      ..begin = effectiveTextColor
      ..end = widget.hoverTextColor ?? effectiveTextColor;

    return utils.HiveBaseControl(
      autofocus: widget.autofocus,
      isFocusable: widget.isFocusable,
      ensureMinimalTouchTargetSize: widget.ensureMinimalTouchTargetSize,
      semanticTypeIsButton: true,
      showFocusEffect: widget.showFocusEffect,
      showPulseEffect: widget.showPulseEffect,
      showPulseEffectJiggle: widget.showPulseEffectJiggle,
      showScaleEffect: widget.showScaleEffect,
      borderRadius: effectiveBorderRadius,
      backgroundColor: widget.backgroundColor,
      focusEffectColor: focusEffectColor,
      pulseEffectColor: widget.pulseEffectColor,
      disabledOpacityValue: widget.disabledOpacityValue,
      minTouchTargetSize: widget.minTouchTargetSize,
      focusEffectExtent: widget.focusEffectExtent,
      pulseEffectExtent: widget.pulseEffectExtent,
      scaleEffectScalar: widget.scaleEffectScalar,
      focusEffectDuration: widget.focusEffectDuration,
      pulseEffectDuration: widget.pulseEffectDuration,
      scaleEffectDuration: widget.scaleEffectDuration,
      focusEffectCurve: widget.focusEffectCurve,
      pulseEffectCurve: widget.pulseEffectCurve,
      scaleEffectCurve: widget.scaleEffectCurve,
      focusNode: widget.focusNode,
      semanticLabel: widget.semanticLabel,
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      builder: (BuildContext context, bool isEnabled, bool isHovered,
          bool isFocused, bool isPressed) {
        final bool canAnimate =
            _isEnabled && (isHovered || isFocused || isPressed);

        _handleHoverEffect(canAnimate);

        return AnimatedBuilder(
          animation: _animationController!,
          builder: (BuildContext context, Widget? child) {
            return IconTheme(
              data: IconThemeData(
                color: _textColor!.value,
                size: effectiveHiveButtonSize.iconSize,
              ),
              child: DefaultTextStyle(
                style: effectiveHiveButtonSize.textStyle
                    .copyWith(color: _textColor!.value),
                child: Container(
                  width: widget.width,
                  height: effectiveHeight,
                  constraints: BoxConstraints(minWidth: effectiveHeight),
                  decoration: widget.decoration ??
                      ShapeDecoration(
                        color: _backgroundColor!.value,
                        shape: utils.HiveSquircleBorder(
                          borderRadius: effectiveBorderRadius
                              .squircleBorderRadius(context),
                          side: BorderSide(
                            color: effectiveBorderColor,
                            width: widget.showBorder ? effectiveBorderWidth : 0,
                            style: widget.showBorder
                                ? BorderStyle.solid
                                : BorderStyle.none,
                          ),
                        ),
                      ),
                  child: child,
                ),
              ),
            );
          },
          child: Padding(
            padding: widget.isFullWidth ? EdgeInsets.zero : correctedPadding,
            child: widget.isFullWidth
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.leading != null)
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: effectiveGap),
                          alignment:
                              Directionality.of(context) == TextDirection.ltr
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                          child: widget.leading,
                        ),
                      if (widget.label != null)
                        Align(
                          child: widget.label,
                        ),
                      if (widget.trailing != null)
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: effectiveGap),
                          alignment:
                              Directionality.of(context) == TextDirection.ltr
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                          child: widget.trailing,
                        ),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.leading != null)
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: effectiveGap),
                          child: widget.leading,
                        ),
                      if (widget.label != null) widget.label!,
                      if (widget.trailing != null)
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: effectiveGap),
                          child: widget.trailing,
                        ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
