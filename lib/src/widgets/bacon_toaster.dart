import 'dart:async';

import 'package:bacon/src/bacon_icons.dart';
import 'package:bacon/src/theme/theme.dart';
import 'package:bacon/src/theme/themes/shadows.dart';
import 'package:bacon/src/utils/positions.dart';
import 'package:bacon/src/utils/responsive.dart';
import 'package:bacon/src/widgets/bacon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

const kDefaultToastDuration = Duration(seconds: 5);

class BaconToaster extends StatefulWidget {
  const BaconToaster({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<BaconToaster> createState() => BaconToasterState();

  static BaconToasterState of(BuildContext context) {
    return maybeOf(context)!;
  }

  static BaconToasterState? maybeOf(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<BaconToasterScope>();
    return scope?.shadMessengerState;
  }
}

class BaconToasterState extends State<BaconToaster>
    with TickerProviderStateMixin {
  late final _controller = AnimationController(vsync: this);
  final _visibleToast = ValueNotifier<BaconToast?>(null);
  final _shown = ValueNotifier(false);
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    _shown.dispose();
    _visibleToast.dispose();
    super.dispose();
  }

  void show(BaconToast toast) {
    _timer?.cancel();
    _shown.value = true;
    _visibleToast.value = toast;
    _controller.forward(from: 0);
    final effectiveDuration = toast.duration ?? kDefaultToastDuration;
    _timer = Timer(effectiveDuration, hide);
  }

  Future<void> hide({bool animate = true}) async {
    _timer?.cancel();
    _shown.value = false;
    if (animate) await _controller.forward(from: 0);
    _visibleToast.value = null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = BaconTheme.of(context);

    return BaconToasterScope(
      shadMessengerState: this,
      child: Stack(
        children: [
          widget.child,
          ValueListenableBuilder(
            valueListenable: _shown,
            builder: (context, visible, child) {
              return ValueListenableBuilder(
                valueListenable: _visibleToast,
                builder: (context, toast, child) {
                  final effectiveToastTheme = switch (toast?.variant) {
                    BaconToastVariant.primary ||
                    null =>
                      theme.primaryToastTheme,
                    BaconToastVariant.destructive =>
                      theme.destructiveToastTheme,
                  };
                  final effectiveAlignment = toast?.alignment ??
                      effectiveToastTheme.alignment ??
                      Alignment.bottomRight;
                  // ignore: omit_local_variable_types
                  final List<Effect<dynamic>> defaultAnimateIn =
                      switch (effectiveAlignment) {
                    Alignment.bottomRight ||
                    Alignment.bottomLeft ||
                    Alignment.bottomCenter =>
                      [
                        const SlideEffect(
                          begin: Offset(0, 1),
                          end: Offset.zero,
                        ),
                      ],
                    Alignment.topRight ||
                    Alignment.topLeft ||
                    Alignment.topCenter =>
                      [
                        const SlideEffect(
                          begin: Offset(0, -1),
                          end: Offset.zero,
                        ),
                      ],
                    Alignment.centerRight ||
                    Alignment.topRight ||
                    Alignment.bottomRight =>
                      [
                        const SlideEffect(
                          begin: Offset(1, 0),
                          end: Offset.zero,
                        ),
                      ],
                    Alignment.centerLeft ||
                    Alignment.topLeft ||
                    Alignment.bottomLeft =>
                      [
                        const SlideEffect(
                          begin: Offset(-1, 0),
                          end: Offset.zero,
                        ),
                      ],
                    Alignment.center || Alignment() => [
                        const FadeEffect(),
                        const ScaleEffect(
                          begin: Offset(.95, .95),
                          end: Offset(1, 1),
                        ),
                      ],
                  };

                  // ignore: omit_local_variable_types
                  final List<Effect<dynamic>> defaultAnimateOut =
                      switch (effectiveAlignment) {
                    Alignment.bottomRight ||
                    Alignment.topRight ||
                    Alignment.centerRight =>
                      const [
                        SlideEffect(
                          begin: Offset.zero,
                          end: Offset(1, 0),
                        ),
                      ],
                    Alignment.topLeft ||
                    Alignment.centerLeft ||
                    Alignment.bottomLeft =>
                      const [
                        SlideEffect(
                          begin: Offset.zero,
                          end: Offset(-1, 0),
                        ),
                      ],
                    Alignment.topCenter => [
                        const SlideEffect(
                          begin: Offset.zero,
                          end: Offset(0, -1),
                        ),
                      ],
                    Alignment.bottomCenter => [
                        const SlideEffect(
                          begin: Offset.zero,
                          end: Offset(0, 1),
                        ),
                      ],
                    Alignment.center || Alignment() => [
                        const FadeEffect(begin: 1, end: 0),
                        const ScaleEffect(
                          begin: Offset(1, 1),
                          end: Offset(.95, .95),
                        ),
                      ],
                  };

                  final effectiveAnimateIn = toast?.animateIn ??
                      effectiveToastTheme.animateIn ??
                      defaultAnimateIn;
                  final effectiveAnimateOut = toast?.animateOut ??
                      effectiveToastTheme.animateOut ??
                      defaultAnimateOut;

                  final defaultOffset = switch (effectiveAlignment) {
                    Alignment.topCenter ||
                    Alignment.topLeft ||
                    Alignment.topRight =>
                      Offset(16, MediaQuery.paddingOf(context).top + 16),
                    Alignment.bottomCenter ||
                    Alignment.bottomLeft ||
                    Alignment.bottomRight =>
                      Offset(16, MediaQuery.paddingOf(context).bottom + 16),
                    _ => const Offset(16, 16),
                  };

                  final effectiveOffset = toast?.offset ??
                      effectiveToastTheme.offset ??
                      defaultOffset;

                  return Animate(
                    controller: _controller,
                    effects: visible ? effectiveAnimateIn : effectiveAnimateOut,
                    child: Align(
                      alignment: effectiveAlignment,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: effectiveOffset.dx,
                          vertical: effectiveOffset.dy,
                        ),
                        child: toast,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class BaconToasterScope extends InheritedWidget {
  const BaconToasterScope({
    super.key,
    required super.child,
    required this.shadMessengerState,
  });
  final BaconToasterState shadMessengerState;

  @override
  bool updateShouldNotify(BaconToasterScope oldWidget) =>
      shadMessengerState != oldWidget.shadMessengerState;
}

enum BaconToastVariant {
  primary,
  destructive,
}

class BaconToast extends StatefulWidget {
  const BaconToast({
    super.key,
    this.title,
    this.description,
    this.action,
    this.closeIcon,
    this.closeIconSrc,
    this.alignment,
    this.offset,
    this.duration,
    this.textDirection,
    this.animateIn,
    this.animateOut,
    this.crossAxisAlignment,
    this.showCloseIconOnlyWhenHovered,
    this.titleStyle,
    this.descriptionStyle,
    this.actionPadding,
    this.border,
    this.radius,
    this.shadows,
    this.backgroundColor,
    this.padding,
    this.closeIconPosition,
    this.constraints,
  }) : variant = BaconToastVariant.primary;

  const BaconToast.destructive({
    super.key,
    this.title,
    this.description,
    this.action,
    this.closeIcon,
    this.closeIconSrc,
    this.alignment,
    this.offset,
    this.duration,
    this.textDirection,
    this.animateIn,
    this.animateOut,
    this.crossAxisAlignment,
    this.showCloseIconOnlyWhenHovered,
    this.titleStyle,
    this.descriptionStyle,
    this.actionPadding,
    this.border,
    this.radius,
    this.shadows,
    this.backgroundColor,
    this.padding,
    this.closeIconPosition,
    this.constraints,
  }) : variant = BaconToastVariant.destructive;

  const BaconToast.raw({
    super.key,
    required this.variant,
    this.title,
    this.description,
    this.action,
    this.closeIcon,
    this.closeIconSrc,
    this.alignment,
    this.offset,
    this.duration,
    this.textDirection,
    this.animateIn,
    this.animateOut,
    this.crossAxisAlignment,
    this.showCloseIconOnlyWhenHovered,
    this.titleStyle,
    this.descriptionStyle,
    this.actionPadding,
    this.border,
    this.radius,
    this.shadows,
    this.backgroundColor,
    this.padding,
    this.closeIconPosition,
    this.constraints,
  });

  final Widget? title;
  final Widget? description;
  final Widget? action;
  final Widget? closeIcon;
  final String? closeIconSrc;
  final Alignment? alignment;
  final Offset? offset;
  final Duration? duration;
  final List<Effect<dynamic>>? animateIn;
  final List<Effect<dynamic>>? animateOut;
  final TextDirection? textDirection;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool? showCloseIconOnlyWhenHovered;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final EdgeInsets? actionPadding;
  final Border? border;
  final BorderRadius? radius;
  final List<BoxShadow>? shadows;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final Position? closeIconPosition;
  final BaconToastVariant variant;
  final BoxConstraints? constraints;

  @override
  State<BaconToast> createState() => _BaconToastState();
}

class _BaconToastState extends State<BaconToast> {
  final hovered = ValueNotifier(false);

  @override
  void dispose() {
    hovered.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = BaconTheme.of(context);

    final effectiveToastTheme = switch (widget.variant) {
      BaconToastVariant.primary => theme.primaryToastTheme,
      BaconToastVariant.destructive => theme.destructiveToastTheme,
    };
    final effectiveForegroundColor = switch (widget.variant) {
      BaconToastVariant.primary => theme.colorScheme.contentPrimary,
      BaconToastVariant.destructive => theme.colorScheme.contentAlertDanger,
    };

    final effectiveCloseIcon = widget.closeIcon ??
        BaconButton.ghost(
          icon: const Icon(
            BaconIcons.delete,
            size: 16,
          ),
          width: 20,
          height: 20,
          padding: EdgeInsets.zero,
          foregroundColor: effectiveForegroundColor.withOpacity(.5),
          hoverBackgroundColor: Colors.transparent,
          hoverForegroundColor: effectiveForegroundColor,
          pressedForegroundColor: effectiveForegroundColor,
          onPressed: () => BaconToaster.of(context).hide(),
        );
    final effectiveTitleStyle = widget.titleStyle ??
        effectiveToastTheme.titleStyle ??
        theme.textTheme.labelSmall.copyWith(
          fontWeight: FontWeight.w500,
          color: effectiveForegroundColor,
        );
    final effectiveDescriptionStyle = widget.descriptionStyle ??
        effectiveToastTheme.descriptionStyle ??
        theme.textTheme.labelSmall.copyWith(
          color: effectiveForegroundColor.withOpacity(.9),
        );
    final effectiveActionPadding = widget.actionPadding ??
        effectiveToastTheme.actionPadding ??
        const EdgeInsets.only(left: 16);
    final effectiveBorder = widget.border ??
        effectiveToastTheme.border ??
        Border.all(color: theme.colorScheme.borderAlertDanger);
    final effectiveBorderRadius =
        widget.radius ?? effectiveToastTheme.radius ?? theme.radius;
    final effectiveShadows =
        widget.shadows ?? effectiveToastTheme.shadows ?? BaconShadows.lg;
    final effectiveBackgroundColor = widget.backgroundColor ??
        effectiveToastTheme.backgroundColor ??
        theme.colorScheme.backgroundAccentBlue;
    final effectivePadding = widget.padding ??
        effectiveToastTheme.padding ??
        const EdgeInsets.fromLTRB(24, 24, 32, 24);
    final effectiveCrossAxisAlignment = widget.crossAxisAlignment ??
        effectiveToastTheme.crossAxisAlignment ??
        CrossAxisAlignment.center;
    final effectiveCloseIconPosition = widget.closeIconPosition ??
        effectiveToastTheme.closeIconPosition ??
        const Position(top: 8, right: 8);
    final effectiveShowCloseIconOnlyWhenHovered =
        widget.showCloseIconOnlyWhenHovered ??
            effectiveToastTheme.showCloseIconOnlyWhenHovered ??
            true;

    return MouseRegion(
      onEnter: (_) => hovered.value = true,
      onExit: (_) => hovered.value = false,
      child: ResponsiveBuilder(
        builder: (context, breakpoint) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minWidth:
                  breakpoint >= theme.responsive.medium ? 0 : double.infinity,
              maxWidth:
                  breakpoint >= theme.responsive.medium ? 420 : double.infinity,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: effectiveBorder,
                borderRadius: effectiveBorderRadius,
                boxShadow: effectiveShadows,
                color: effectiveBackgroundColor,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: effectivePadding,
                    child: Row(
                      textDirection: widget.textDirection,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: effectiveCrossAxisAlignment,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (widget.title != null)
                                DefaultTextStyle(
                                  style: effectiveTitleStyle,
                                  child: widget.title!,
                                ),
                              if (widget.description != null)
                                DefaultTextStyle(
                                  style: effectiveDescriptionStyle,
                                  child: widget.description!,
                                ),
                            ],
                          ),
                        ),
                        if (widget.action != null)
                          Padding(
                            padding: effectiveActionPadding,
                            child: widget.action,
                          ),
                      ],
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: hovered,
                    builder: (context, hovered, child) {
                      if (!effectiveShowCloseIconOnlyWhenHovered) {
                        return child!;
                      }
                      return Visibility.maintain(
                        visible: hovered,
                        child: child!,
                      );
                    },
                    child: effectiveCloseIcon,
                  ).positionedWith(effectiveCloseIconPosition),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
