import 'package:bacon/src/theme/data.dart';
import 'package:bacon/src/theme/theme.dart';
import 'package:bacon/src/theme/theme_components/button.dart';
import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:bacon/src/utils/debug_check_theme.dart';
import 'package:bacon/src/utils/states_controller.dart';
import 'package:bacon/src/widgets/bacon_focused.dart';
import 'package:flutter/material.dart';

enum BaconButtonVariant {
  primary,
  destructive,
  outline,
  secondary,
  ghost,
  link,
}

enum BaconButtonSize {
  regular,
  sm,
  lg,
  icon,
}

class BaconButton extends StatefulWidget {
  const BaconButton({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.size,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  }) : variant = BaconButtonVariant.primary;

  const BaconButton.raw({
    super.key,
    required this.variant,
    this.size,
    this.text,
    this.icon,
    this.onPressed,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  });

  const BaconButton.destructive({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.size,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  }) : variant = BaconButtonVariant.destructive;

  const BaconButton.outline({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.size,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  }) : variant = BaconButtonVariant.outline;

  const BaconButton.secondary({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.size,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  }) : variant = BaconButtonVariant.secondary;

  const BaconButton.ghost({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.size,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  }) : variant = BaconButtonVariant.ghost;

  const BaconButton.link({
    super.key,
    required this.text,
    this.onPressed,
    this.size,
    this.applyIconColorFilter,
    this.cursor,
    this.width,
    this.height,
    this.padding,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.enabled = true,
    this.onLongPress,
    this.statesController,
  })  : variant = BaconButtonVariant.link,
        icon = null;

  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Widget? icon;
  final Widget? text;
  final BaconButtonVariant variant;
  final BaconButtonSize? size;
  final bool? applyIconColorFilter;
  final MouseCursor? cursor;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? hoverBackgroundColor;
  final Color? foregroundColor;
  final Color? hoverForegroundColor;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final bool autofocus;
  final FocusNode? focusNode;
  final Color? pressedBackgroundColor;
  final Color? pressedForegroundColor;
  final List<BoxShadow>? shadows;
  final Gradient? gradient;
  final TextDecoration? textDecoration;
  final TextDecoration? hoverTextDecoration;
  final BaconDecoration? decoration;
  final bool enabled;
  final BaconStatesController? statesController;

  @override
  State<BaconButton> createState() => _BaconButtonState();
}

class _BaconButtonState extends State<BaconButton> {
  BaconStatesController? _statesController;
  FocusNode? _focusNode;

  BaconStatesController get statesController =>
      widget.statesController ?? _statesController!;

  FocusNode get focusNode => widget.focusNode ?? _focusNode!;

  @override
  void initState() {
    super.initState();
    if (widget.statesController == null) {
      _statesController = BaconStatesController();
    }
    if (widget.focusNode == null) _focusNode = FocusNode();
    statesController.update(BaconState.disabled, !widget.enabled);
    focusNode.addListener(onFocusChange);
  }

  @override
  void didUpdateWidget(covariant BaconButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enabled != widget.enabled) {
      statesController.update(BaconState.disabled, !widget.enabled);
    }
  }

  @override
  void dispose() {
    _statesController?.dispose();
    focusNode.removeListener(onFocusChange);
    _focusNode?.dispose();
    super.dispose();
  }

  void onFocusChange() {
    statesController.update(BaconState.focused, focusNode.hasFocus);
  }

  void assertCheckHasTextOrIcon() {
    assert(
      widget.text != null || widget.icon != null,
      'Either text or icon must be provided',
    );
  }

  BaconButtonTheme buttonTheme(BaconThemeData theme) =>
      theme.primaryButtonTheme;

  // BaconButtonTheme buttonTheme(BaconThemeData theme) {
  //   return BaconButtonVariant.primary => theme.primaryButtonTheme,;
  //   return switch (widget.variant) {
  //     BaconButtonVariant.primary => theme.primaryButtonTheme,
  //     // BaconButtonVariant.destructive => theme.destructiveButtonTheme,
  //     // BaconButtonVariant.secondary => theme.secondaryButtonTheme,
  //     // BaconButtonVariant.ghost => theme.ghostButtonTheme,
  //     // BaconButtonVariant.outline => theme.outlineButtonTheme,
  //     // BaconButtonVariant.link => theme.linkButtonTheme,
  //   };
  // }

  BaconButtonSizeTheme sizeTheme(
    BaconThemeData theme,
    BaconButtonSize size,
  ) {
    switch (size) {
      case BaconButtonSize.sm:
        return buttonTheme(theme).sizesTheme?.sm ?? theme.buttonSizesTheme.sm!;
      case BaconButtonSize.lg:
        return buttonTheme(theme).sizesTheme?.lg ?? theme.buttonSizesTheme.lg!;
      case BaconButtonSize.icon:
        return buttonTheme(theme).sizesTheme?.icon ??
            theme.buttonSizesTheme.icon!;
      case BaconButtonSize.regular:
        return buttonTheme(theme).sizesTheme?.regular ??
            theme.buttonSizesTheme.regular!;
    }
  }

  double defaultHeightForSize(BaconThemeData theme, BaconButtonSize size) {
    return sizeTheme(theme, size).height;
  }

  double height(BaconThemeData theme) {
    if (widget.height != null) return widget.height!;
    if (buttonTheme(theme).height != null) {
      return buttonTheme(theme).height!;
    }
    if (widget.size != null) {
      return defaultHeightForSize(theme, widget.size!);
    }
    return defaultHeightForSize(theme, buttonTheme(theme).size);
  }

  double? defaultWidthForSize(BaconThemeData theme, BaconButtonSize size) {
    return sizeTheme(theme, size).width;
  }

  double? width(BaconThemeData theme) {
    if (widget.width != null) return widget.width!;
    if (buttonTheme(theme).width != null) {
      return buttonTheme(theme).width!;
    }
    if (widget.size != null) {
      return defaultWidthForSize(theme, widget.size!);
    }
    return defaultWidthForSize(theme, buttonTheme(theme).size);
  }

  EdgeInsets defaultPaddingForSize(
    BaconThemeData theme,
    BaconButtonSize size,
  ) {
    return sizeTheme(theme, size).padding;
  }

  EdgeInsets padding(BaconThemeData theme) {
    if (widget.padding != null) return widget.padding!;
    if (widget.size != null) {
      return defaultPaddingForSize(theme, widget.size!);
    }
    return defaultPaddingForSize(theme, buttonTheme(theme).size);
  }

  Color? background(BaconThemeData theme) {
    return widget.backgroundColor ?? buttonTheme(theme).backgroundColor;
  }

  Color? hoverBackground(BaconThemeData theme) {
    return widget.hoverBackgroundColor ??
        buttonTheme(theme).hoverBackgroundColor;
  }

  Color foreground(BaconThemeData theme) {
    if (widget.foregroundColor != null) return widget.foregroundColor!;

    final btnThemeForegroundColor = buttonTheme(theme).foregroundColor;
    assert(
      btnThemeForegroundColor != null,
      'Button foregroundColor is null in BaconButtonTheme',
    );
    return buttonTheme(theme).foregroundColor!;
  }

  Color hoverForeground(BaconThemeData theme) {
    if (widget.hoverForegroundColor != null) {
      return widget.hoverForegroundColor!;
    }
    final btnThemeHoverForegroundColor =
        buttonTheme(theme).hoverForegroundColor;
    assert(
      btnThemeHoverForegroundColor != null,
      'Button hoverForegroundColor is null in BaconButtonTheme',
    );
    return buttonTheme(theme).hoverForegroundColor!;
  }

  Color pressedBackgroundColor(BaconThemeData theme) {
    return widget.pressedBackgroundColor ??
        buttonTheme(theme).pressedBackgroundColor!;
  }

  Color pressedForegroundColor(BaconThemeData theme) {
    return widget.pressedForegroundColor ??
        buttonTheme(theme).pressedForegroundColor!;
  }

  TextDecoration? textDecoration(
    BaconThemeData theme, {
    required bool hovered,
  }) {
    if (hovered) {
      return widget.hoverTextDecoration ??
          buttonTheme(theme).hoverTextDecoration;
    }
    return widget.textDecoration ?? buttonTheme(theme).textDecoration;
  }

  BoxBorder? border(BaconThemeData theme) {
    return widget.border ?? buttonTheme(theme).border;
  }

  BorderRadius borderRadius(BaconThemeData theme) {
    return widget.borderRadius ?? buttonTheme(theme).radius ?? theme.radius;
  }

  MouseCursor cursor(BaconThemeData theme) {
    if (widget.cursor != null) return widget.cursor!;
    return (widget.enabled
        ? buttonTheme(theme).cursor ?? SystemMouseCursors.click
        : MouseCursor.defer);
  }

  Gradient? gradient(BaconThemeData theme) {
    return widget.gradient ?? buttonTheme(theme).gradient;
  }

  List<BoxShadow>? shadows(BaconThemeData theme) {
    return widget.shadows ?? buttonTheme(theme).shadows;
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasBaconTheme(context));
    assertCheckHasTextOrIcon();

    final theme = BaconTheme.of(context);

    final hasPressedBackgroundColor = widget.pressedBackgroundColor != null ||
        buttonTheme(theme).pressedBackgroundColor != null;
    final hasPressedForegroundColor = widget.pressedForegroundColor != null ||
        buttonTheme(theme).pressedForegroundColor != null;

    final applyIconColorFilter = widget.applyIconColorFilter ??
        theme.primaryButtonTheme.applyIconColorFilter;

    final effectiveDecoration =
        widget.decoration ?? buttonTheme(theme).decoration ?? theme.decoration;

    return ValueListenableBuilder(
      valueListenable: statesController,
      builder: (context, states, _) {
        final pressed = states.contains(BaconState.pressed);
        final hovered = states.contains(BaconState.hovered);
        final enabled = !states.contains(BaconState.disabled);

        // Applies the foreground color filter to the icon if provided
        var icon = widget.icon;
        if (icon != null && applyIconColorFilter) {
          icon = ColorFiltered(
            colorFilter: ColorFilter.mode(
              hasPressedForegroundColor && pressed
                  ? pressedForegroundColor(theme)
                  : hovered
                      ? hoverForeground(theme)
                      : foreground(theme),
              BlendMode.srcIn,
            ),
            child: icon,
          );
        }
        return Semantics(
          container: true,
          button: true,
          focusable: enabled,
          enabled: enabled,
          child: Opacity(
            opacity: enabled ? 1 : .5,
            child: AbsorbPointer(
              absorbing: !enabled,
              child: BaconFocused(
                canRequestFocus: enabled,
                autofocus: widget.autofocus,
                focusNode: focusNode,
                builder: (context, focused, child) => BaconDecorator(
                  decoration: effectiveDecoration,
                  isFocused: focused,
                  child: child!,
                ),
                child: MouseRegion(
                  onEnter: (_) {
                    if (hovered) return;
                    statesController.update(BaconState.hovered, true);
                  },
                  onExit: (_) {
                    if (!hovered) return;
                    statesController.update(BaconState.hovered, false);
                  },
                  cursor: cursor(theme),
                  child: GestureDetector(
                    onLongPress: widget.onLongPress,
                    onTap: widget.onPressed == null
                        ? null
                        : () {
                            if (!focusNode.hasFocus) {
                              FocusScope.of(context).unfocus();
                            }
                            widget.onPressed!();
                          },
                    onTapDown: (_) {
                      if (pressed) return;
                      statesController.update(BaconState.pressed, true);
                    },
                    onTapUp: (_) {
                      if (!pressed) return;
                      statesController.update(BaconState.pressed, false);
                    },
                    onTapCancel: () {
                      if (!pressed) return;
                      statesController.update(BaconState.pressed, false);
                    },
                    child: Container(
                      height: height(theme),
                      width: width(theme),
                      decoration: BoxDecoration(
                        color: hasPressedBackgroundColor && pressed
                            ? pressedBackgroundColor(theme)
                            : hovered
                                ? hoverBackground(theme)
                                : background(theme),
                        borderRadius: borderRadius(theme),
                        border: border(theme),
                        gradient: gradient(theme),
                        boxShadow: shadows(theme),
                      ),
                      padding: padding(theme),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (icon != null) icon,
                              if (widget.text != null)
                                DefaultTextStyle(
                                  style: theme.textTheme.labelSmall.copyWith(
                                    color: hasPressedForegroundColor && pressed
                                        ? pressedForegroundColor(theme)
                                        : hovered
                                            ? hoverForeground(theme)
                                            : foreground(theme),
                                    decoration: textDecoration(
                                      theme,
                                      hovered: hovered,
                                    ),
                                    decorationColor: foreground(theme),
                                    decorationStyle: TextDecorationStyle.solid,
                                  ),
                                  textAlign: TextAlign.center,
                                  child: widget.text!,
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
