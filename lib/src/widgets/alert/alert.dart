import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/alert/alert_properties.dart';
import 'package:bacon/src/theme/components/alert/alert_sizes.dart';
import 'package:bacon/src/theme/components/alert/alert_theme.dart';
import 'package:bacon/src/utils/extensions.dart';
import 'package:bacon/src/utils/shape_decoration.dart';
import 'package:bacon/src/utils/squircle/squircle_border.dart';
import 'package:flutter/material.dart';

enum BaconAlertSize {
  large,
  small,
}

enum BaconAlertStatus {
  info,
  success,
  warning,
  error,
  update,
}

enum BaconAlertStyle {
  outlined,
  filled,
  light,
}

class BaconAlert extends StatefulWidget {
  final Widget title;
  final Widget? body;
  final Widget? leading;
  final Widget? trailing;
  final String? semanticLabel;
  final Curve? curve;
  final Duration? duration;
  final EdgeInsetsGeometry? padding;
  final double? hGap;
  final double? vGap;
  final double? minHeight;
  final BorderRadiusGeometry? borderRadius;
  final Color? background;
  final Color? borderColor;
  final bool showBorder;
  final bool show;
  final Color? textAndIconColor;
  final Decoration? decoration;
  final BaconAlertSize? size;
  final BaconAlertStatus? status;
  final BaconAlertStyle? style;

  const BaconAlert({
    super.key,
    required this.title,
    this.body,
    this.leading,
    this.trailing,
    this.semanticLabel,
    this.curve,
    this.duration,
    this.padding,
    this.hGap,
    this.vGap,
    this.minHeight,
    this.borderRadius,
    this.background,
    this.borderColor,
    this.showBorder = false,
    this.show = false,
    this.textAndIconColor,
    this.decoration,
    this.size,
    this.status,
  })  : style = BaconAlertStyle.filled,
        assert(
          !(size == BaconAlertSize.small && body != null),
          'The body must be null when using the small size.',
        );

  const BaconAlert.light({
    super.key,
    required this.title,
    this.background,
    this.show = false,
    this.borderRadius,
    this.textAndIconColor,
    this.semanticLabel,
    this.leading,
    this.body,
    this.trailing,
    this.size,
    this.status,
  })  : curve = null,
        duration = null,
        padding = null,
        hGap = null,
        vGap = null,
        minHeight = null,
        borderColor = null,
        showBorder = false,
        decoration = null,
        style = BaconAlertStyle.light;

  const BaconAlert.outlined({
    super.key,
    required this.title,
    this.borderColor,
    this.show = false,
    this.borderRadius,
    this.textAndIconColor,
    this.semanticLabel,
    this.leading,
    this.body,
    this.trailing,
    this.size,
    this.status,
  })  : curve = null,
        duration = null,
        background = null,
        padding = null,
        hGap = null,
        vGap = null,
        minHeight = null,
        showBorder = true,
        decoration = null,
        style = BaconAlertStyle.outlined;

  @override
  State<BaconAlert> createState() => _BaconAlertState();
}

class _BaconAlertState extends State<BaconAlert>
    with SingleTickerProviderStateMixin {
  bool _isVisible = true;

  AnimationController? _controller;
  Animation<double>? _curve;

  BaconAlertProperties _getAvatarSize(
    BuildContext context,
    BaconAlertSize? size,
  ) {
    switch (size) {
      case BaconAlertSize.large:
        return context.baconTheme?.alertTheme.sizes.lg ??
            BaconAlertSizes(tokens: BaconTokens.light).lg;
      case BaconAlertSize.small:
        return context.baconTheme?.alertTheme.sizes.sm ??
            BaconAlertSizes(tokens: BaconTokens.light).sm;
      default:
        return context.baconTheme?.alertTheme.sizes.lg ??
            BaconAlertSizes(tokens: BaconTokens.light).lg;
    }
  }

  TextStyle _getTitleStyle({required BuildContext context}) {
    if (widget.body != null) {
      return _getAvatarSize(context, widget.size).titleTextStyle;
    } else {
      return _getAvatarSize(context, widget.size).bodyTitleStyle;
    }
  }

  void _showAlert() {
    _controller!.forward();

    setState(() => _isVisible = true);
  }

  void _hideAlert() {
    _controller!.reverse().then<void>((value) {
      if (!mounted) return;

      setState(() => _isVisible = false);
    });
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration _) {
      if (!mounted) return;

      if (_isVisible) _controller!.value = 1.0;
    });
  }

  @override
  didUpdateWidget(BaconAlert oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.show != oldWidget.show) {
      widget.show ? _showAlert() : _hideAlert();
    }
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BaconAlertProperties effectiveAvatarSize =
        _getAvatarSize(context, widget.size);

    final BorderRadiusGeometry effectiveBorderRadius =
        widget.borderRadius ?? effectiveAvatarSize.borderRadius;

    final double effectiveHorizontalGap =
        widget.hGap ?? effectiveAvatarSize.hGap;

    final double effectiveVerticalGap = widget.vGap ?? effectiveAvatarSize.vGap;

    final double effectiveMinimumHeight =
        widget.minHeight ?? effectiveAvatarSize.minHeight;

    final Color effectiveBackgroundColor = widget.background ??
        BaconAlertTheme.fromStatusAndStyle(
          context: context,
          status: widget.status!,
          style: widget.style!,
          tokens: BaconTokens.light,
        ).colors.background;

    final Color effectiveBorderColor = widget.borderColor ??
        BaconAlertTheme.fromStatusAndStyle(
          context: context,
          status: widget.status!,
          style: widget.style!,
          tokens: BaconTokens.light,
        ).colors.borderColor;

    final Color effectiveTextColor = widget.textAndIconColor ??
        BaconAlertTheme.fromStatusAndStyle(
          context: context,
          status: widget.status!,
          style: widget.style!,
          tokens: BaconTokens.light,
        ).colors.textColor;

    final Color effectiveIconColor = widget.textAndIconColor ??
        BaconAlertTheme.fromStatusAndStyle(
          context: context,
          status: widget.status!,
          style: widget.style!,
          tokens: BaconTokens.light,
        ).colors.iconColor;

    final EdgeInsetsGeometry effectivePadding =
        widget.padding ?? effectiveAvatarSize.padding;

    final TextStyle effectiveTitleTextStyle = _getTitleStyle(context: context);

    final TextStyle effectiveBodyTextStyle = effectiveAvatarSize.bodyTitleStyle;

    final double effectiveIconSize =
        effectiveAvatarSize.iconSize ?? BaconTokens.light.scale.component.lg;

    final Duration effectiveTransitionDuration =
        widget.duration ?? effectiveAvatarSize.duration;

    final Curve effectiveTransitionCurve =
        widget.curve ?? effectiveAvatarSize.curve;

    _controller ??= AnimationController(
      duration: effectiveTransitionDuration,
      vsync: this,
    );

    _curve ??= CurvedAnimation(
      parent: _controller!,
      curve: effectiveTransitionCurve,
    );

    return Visibility(
      visible: _isVisible,
      child: Semantics(
        label: widget.semanticLabel,
        child: RepaintBoundary(
          child: FadeTransition(
            opacity: _curve!,
            child: Container(
              padding: effectivePadding,
              constraints: BoxConstraints(minHeight: effectiveMinimumHeight),
              decoration: widget.decoration ??
                  ShapeDecorationWithPremultipliedAlpha(
                    color: effectiveBackgroundColor,
                    shape: BaconSquircleBorder(
                      side: BorderSide(
                        color: effectiveBorderColor,
                        style: widget.showBorder
                            ? BorderStyle.solid
                            : BorderStyle.none,
                      ),
                      borderRadius:
                          effectiveBorderRadius.squircleBorderRadius(context),
                    ),
                  ),
              child: IconTheme(
                data: IconThemeData(
                  color: effectiveIconColor,
                  size: effectiveIconSize,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: widget.body != null
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    if (widget.leading != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: effectiveHorizontalGap,
                        ),
                        child: widget.leading,
                      ),
                    widget.body != null
                        ? Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultTextStyle(
                                  style: effectiveTitleTextStyle.copyWith(
                                    color: effectiveTextColor,
                                  ),
                                  child: widget.title,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: effectiveVerticalGap,
                                  ),
                                  child: DefaultTextStyle(
                                    style: effectiveBodyTextStyle.copyWith(
                                      color: effectiveTextColor,
                                    ),
                                    child: widget.body!,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : DefaultTextStyle(
                            style: effectiveTitleTextStyle.copyWith(
                              color: effectiveTextColor,
                            ),
                            child: widget.title,
                          ),
                    if (widget.trailing != null)
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: effectiveHorizontalGap,
                        ),
                        child: widget.trailing,
                      ),
                    // if (widget.body != null)
                    //   Row(
                    //     children: [
                    //       Expanded(
                    //         child: Padding(
                    //           padding: EdgeInsetsDirectional.only(
                    //               top: effectiveVerticalGap),
                    //           child: widget.body,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
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
