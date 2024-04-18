import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/tokens/transitions.dart';
import 'package:bacon/src/widgets/tooltip/tooltip_shape.dart';
import 'package:flutter/material.dart';

enum BaconTooltipPosition {
  top,
  topLeft,
  topRight,
  bottom,
  bottomLeft,
  bottomRight,
  left,
  right,
  vertical,
  horizontal,
}

class BaconTooltip extends StatefulWidget {
  /// The widget to display inside the tooltip as its content.
  final Widget title;

  final Widget? content;

  final Widget? leading;

  final Widget? trailing;

  // This is required to show only one tooltip at a time.
  static final List<_BaconTooltipState> _openedTooltips = [];

  /// Whether the tooltip has an arrow (tail).
  final bool hasArrow;

  /// Whether to hide (dismiss) the tooltip on tap. Defaults to true.
  /// For finer control over dismissal, use [show] and [onTap] properties.
  final bool hideOnTap;

  /// Whether to show the tooltip.
  final bool show;

  /// The border radius of the tooltip.
  final BorderRadiusGeometry? borderRadius;

  /// The background color of the tooltip.
  final Color? backgroundColor;

  /// The border color of the tooltip. Displayed when [borderWidth] is larger than 0.
  final Color borderColor;

  /// The base width of the tooltip arrow (tail).
  final double? arrowBaseWidth;

  /// The length of the tooltip arrow (tail).
  final double? arrowLength;

  /// The offset of the tooltip arrow (tail) from the center of the tooltip.
  final double arrowOffsetValue;

  /// The distance from the tip of the tooltip arrow (tail) to the [child] (target).
  final double? arrowTipDistance;

  /// The width of the tooltip border.
  final double borderWidth;

  final double? iconSize;

  /// An optional size constraint for the tooltip [content] to define its minimum height.
  ///
  /// If a constraint is not provided, the size will automatically adjust to the [content].
  final double? minHeight;

  /// An optional size constraint for the tooltip [content] to define its minimum width.
  ///
  /// If a constraint is not provided, the size will automatically adjust to the [content].
  final double? minWidth;

  /// An optional size constraint for the tooltip [content] to define its maximum height.
  ///
  /// If a constraint is not provided, the size will automatically adjust to the [content].
  final double? maxHeight;

  /// An optional size constraint for the tooltip [content] to define its maximum width.
  ///
  /// If a constraint is not provided, the size will automatically adjust to the [content].
  final double? maxWidth;

  /// The margin of the tooltip. Prevents the tooltip from touching the edges of the viewport.
  final double tooltipMargin;

  /// The duration of the tooltip transition animation (fade in or out).
  final Duration? transitionDuration;

  /// The curve of the tooltip transition animation (fade in or out).
  final Curve? transitionCurve;

  /// The padding of the tooltip [content].
  final EdgeInsetsGeometry? contentPadding;

  /// The list of shadows applied to the tooltip.
  final List<BoxShadow>? tooltipShadows;

  /// The tooltip position relative to the [child] (target). Defaults to [BaconTooltipPosition.vertical].
  final BaconTooltipPosition tooltipPosition;

  /// The observer to track route changes and automatically hide the tooltip when the widget's route is not active.
  final RouteObserver<PageRoute<dynamic>>? routeObserver;

  /// The semantic label for the tooltip.
  final String? semanticLabel;

  /// The callback that is called when the tooltip is tapped.
  final VoidCallback? onTap;

  /// The widget to display as the child (target) of the tooltip.
  final Widget child;

  /// Creates a Bacon Design tooltip.
  const BaconTooltip({
    super.key,
    this.hasArrow = true,
    this.hideOnTap = true,
    required this.show,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor = Colors.transparent,
    this.arrowBaseWidth,
    this.arrowLength,
    this.arrowOffsetValue = 0,
    this.arrowTipDistance,
    this.borderWidth = 0,
    this.iconSize,
    this.minHeight,
    this.minWidth,
    this.maxHeight,
    this.maxWidth,
    this.tooltipMargin = 8,
    this.transitionDuration,
    this.transitionCurve,
    this.contentPadding,
    this.tooltipShadows,
    this.tooltipPosition = BaconTooltipPosition.top,
    this.routeObserver,
    this.semanticLabel,
    this.onTap,
    required this.child,
    required this.title,
    this.content,
    this.leading,
    this.trailing,
  });

  // Clear existing tooltips, excluding the supplied one.
  static void _removeOtherTooltips(_BaconTooltipState current) {
    if (_openedTooltips.isNotEmpty) {
      // Avoid concurrent modification.
      final List<_BaconTooltipState> openedTooltips = _openedTooltips.toList();

      for (final _BaconTooltipState state in openedTooltips) {
        if (state == current) continue;

        state._clearOverlayEntry();
      }
    }
  }

  @override
  _BaconTooltipState createState() => _BaconTooltipState();
}

class _BaconTooltipState extends State<BaconTooltip>
    with RouteAware, SingleTickerProviderStateMixin {
  final GlobalKey _tooltipKey = GlobalKey();
  final LayerLink _layerLink = LayerLink();

  AnimationController? _animationController;
  CurvedAnimation? _curvedAnimation;

  OverlayEntry? _overlayEntry;

  bool _routeIsShowing = true;

  bool get shouldShowTooltip => widget.show && _routeIsShowing;

  void _showTooltip() {
    _overlayEntry = OverlayEntry(
        builder: (BuildContext context) => _createOverlayContent());
    Overlay.of(context).insert(_overlayEntry!);

    BaconTooltip._openedTooltips.add(this);
    BaconTooltip._removeOtherTooltips(this);

    _animationController!.value = 0;
    _animationController!.forward();
  }

  void _updateTooltip() {
    _overlayEntry?.markNeedsBuild();
  }

  void _removeTooltip({bool immediately = false}) {
    if (immediately) {
      _clearOverlayEntry();
    } else {
      _animationController!.value = 1;
      _animationController!.reverse().then((value) => _clearOverlayEntry());
    }
  }

  void _clearOverlayEntry() {
    if (_overlayEntry != null) {
      BaconTooltip._openedTooltips.remove(this);
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }

  void _handleTap(TapDownDetails details) {
    final RenderBox? tooltipRenderBox =
        _tooltipKey.currentContext?.findRenderObject() as RenderBox?;
    final RenderBox? overlayRenderBox =
        Overlay.of(context).context.findRenderObject() as RenderBox?;
    final Offset? tooltipPosition = tooltipRenderBox?.localToGlobal(Offset.zero,
        ancestor: overlayRenderBox);

    if (widget.hideOnTap ||
        tooltipPosition != null &&
            !tooltipRenderBox!.size
                .contains(details.localPosition - tooltipPosition)) {
      _removeTooltip();
    }

    widget.onTap?.call();
  }

  _TooltipPositionProperties _resolveTooltipPositionParameters({
    required BaconTooltipPosition tooltipPosition,
    required double arrowTipDistance,
    required double arrowLength,
    required double overlayWidth,
    required double tooltipTargetGlobalLeft,
    required double tooltipTargetGlobalCenter,
    required double tooltipTargetGlobalRight,
  }) {
    switch (tooltipPosition) {
      case BaconTooltipPosition.top:
        return _TooltipPositionProperties(
          offset: Offset(0, -(arrowTipDistance + arrowLength)),
          targetAnchor: Alignment.topCenter,
          followerAnchor: Alignment.bottomCenter,
          tooltipMaxWidth: overlayWidth -
              ((overlayWidth / 2 - tooltipTargetGlobalCenter) * 2).abs() -
              widget.tooltipMargin * 2,
        );

      case BaconTooltipPosition.bottom:
        return _TooltipPositionProperties(
          offset: Offset(0, arrowTipDistance + arrowLength),
          targetAnchor: Alignment.bottomCenter,
          followerAnchor: Alignment.topCenter,
          tooltipMaxWidth: overlayWidth -
              ((overlayWidth / 2 - tooltipTargetGlobalCenter) * 2).abs() -
              widget.tooltipMargin * 2,
        );

      case BaconTooltipPosition.left:
        return _TooltipPositionProperties(
          offset: Offset(-(arrowTipDistance + arrowLength), 0),
          targetAnchor: Alignment.centerLeft,
          followerAnchor: Alignment.centerRight,
          tooltipMaxWidth: tooltipTargetGlobalLeft -
              arrowLength -
              arrowTipDistance -
              widget.tooltipMargin,
        );

      case BaconTooltipPosition.right:
        return _TooltipPositionProperties(
          offset: Offset(arrowTipDistance + arrowLength, 0),
          targetAnchor: Alignment.centerRight,
          followerAnchor: Alignment.centerLeft,
          tooltipMaxWidth: overlayWidth -
              tooltipTargetGlobalRight -
              arrowLength -
              arrowTipDistance -
              widget.tooltipMargin,
        );

      case BaconTooltipPosition.topLeft:
        return _TooltipPositionProperties(
          offset: Offset(0, -(arrowTipDistance + arrowLength)),
          targetAnchor: Alignment.topRight,
          followerAnchor: Alignment.bottomRight,
          tooltipMaxWidth: tooltipTargetGlobalRight - widget.tooltipMargin,
        );

      case BaconTooltipPosition.topRight:
        return _TooltipPositionProperties(
          offset: Offset(0, -(arrowTipDistance + arrowLength)),
          targetAnchor: Alignment.topLeft,
          followerAnchor: Alignment.bottomLeft,
          tooltipMaxWidth:
              overlayWidth - tooltipTargetGlobalLeft - widget.tooltipMargin,
        );

      case BaconTooltipPosition.bottomLeft:
        return _TooltipPositionProperties(
          offset: Offset(0, arrowTipDistance + arrowLength),
          targetAnchor: Alignment.bottomRight,
          followerAnchor: Alignment.topRight,
          tooltipMaxWidth: tooltipTargetGlobalRight - widget.tooltipMargin,
        );

      case BaconTooltipPosition.bottomRight:
        return _TooltipPositionProperties(
          offset: Offset(0, arrowTipDistance + arrowLength),
          targetAnchor: Alignment.bottomLeft,
          followerAnchor: Alignment.topLeft,
          tooltipMaxWidth:
              overlayWidth - tooltipTargetGlobalLeft - widget.tooltipMargin,
        );

      default:
        throw AssertionError(tooltipPosition);
    }
  }

  @override
  void didPush() {
    _routeIsShowing = true;
    // Route was added to the navigator and is now the top-most route.
    if (shouldShowTooltip) {
      _removeTooltip();

      WidgetsBinding.instance.addPostFrameCallback((Duration _) {
        if (!mounted) return;

        _showTooltip();
      });
    }
  }

  @override
  void didPushNext() {
    _routeIsShowing = false;
    _removeTooltip();
  }

  @override
  Future<void> didPopNext() async {
    _routeIsShowing = true;

    if (shouldShowTooltip) {
      // The covering route was popped off the navigator.
      _removeTooltip();

      await Future.delayed(const Duration(milliseconds: 10), () {
        if (mounted) _showTooltip();
      });
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration _) {
      widget.routeObserver
          ?.subscribe(this, ModalRoute.of(context)! as PageRoute<dynamic>);

      if (widget.show) {
        _showTooltip();
      }
    });
  }

  @override
  void didUpdateWidget(BaconTooltip oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.routeObserver != widget.routeObserver) {
      oldWidget.routeObserver?.unsubscribe(this);
      widget.routeObserver
          ?.subscribe(this, ModalRoute.of(context)! as PageRoute<dynamic>);
    }

    WidgetsBinding.instance.addPostFrameCallback((Duration _) {
      if (!_routeIsShowing) return;

      if (oldWidget.tooltipPosition != widget.tooltipPosition) {
        _removeTooltip(immediately: true);
        _showTooltip();
      } else if (shouldShowTooltip && _overlayEntry == null) {
        _showTooltip();
      } else if (!shouldShowTooltip && _overlayEntry != null) {
        _removeTooltip();
      }

      _updateTooltip();
    });
  }

  @override
  void deactivate() {
    if (_overlayEntry != null) {
      _removeTooltip(immediately: true);
    }

    super.deactivate();
  }

  @override
  void dispose() {
    if (_overlayEntry != null) {
      _removeTooltip(immediately: true);
    }

    widget.routeObserver?.unsubscribe(this);

    super.dispose();
  }

  Widget _createOverlayContent() {
    BaconTooltipPosition tooltipPosition = widget.tooltipPosition;

    final BorderRadiusGeometry effectiveBorderRadius = widget.borderRadius ??
        context.baconTheme?.tooltipTheme.properties.borderRadius ??
        BaconTokens.light.shape.radii.x2s;

    final resolvedBorderRadius =
        effectiveBorderRadius.resolve(Directionality.of(context));

    final Color effectiveBackgroundColor = widget.backgroundColor ??
        context.baconTheme?.tooltipTheme.colors.background ??
        BaconTokens.light.modes.background.primary;

    final Color effectiveTitleColor =
        context.baconTheme?.tooltipTheme.colors.titleColor ??
            BaconTokens.light.modes.content.inverse;

    final Color effectiveContentColor =
        context.baconTheme?.tooltipTheme.colors.contentColor ??
            BaconTokens.light.modes.content.tertiary;

    final Color effectiveIconColor =
        context.baconTheme?.tooltipTheme.colors.iconColor ??
            BaconTokens.light.modes.content.primary;

    final double effectiveArrowBaseWidth = widget.arrowBaseWidth ??
        context.baconTheme?.tooltipTheme.properties.arrowBaseWidth ??
        16;

    final double effectiveArrowLength = widget.hasArrow
        ? (widget.arrowLength ??
            context.baconTheme?.tooltipTheme.properties.arrowLength ??
            8)
        : 0;

    final double effectiveArrowTipDistance = widget.arrowTipDistance ??
        context.baconTheme?.tooltipTheme.properties.arrowTipDistance ??
        8;

    final double effectiveIconSize =
        widget.iconSize ?? BaconTokens.light.scale.component.x2s;

    final EdgeInsetsGeometry effectiveContentPadding = widget.contentPadding ??
        context.baconTheme?.tooltipTheme.properties.contentPadding ??
        const EdgeInsets.all(12);

    final EdgeInsets resolvedContentPadding =
        effectiveContentPadding.resolve(Directionality.of(context));

    final List<BoxShadow> effectiveTooltipShadows = widget.tooltipShadows ??
        context.baconTheme?.tooltipTheme.shadows.tooltipShadows ??
        BaconTokens.light.shadows.sm;

    final TextStyle effectiveTextStyle =
        context.baconTheme?.tooltipTheme.properties.textStyle ??
            BaconTokens.light.typography.label.xs;

    final overlayRenderBox =
        Overlay.of(context).context.findRenderObject()! as RenderBox;

    final targetRenderBox = context.findRenderObject()! as RenderBox;

    final tooltipTargetGlobalCenter = targetRenderBox.localToGlobal(
        targetRenderBox.size.center(Offset.zero),
        ancestor: overlayRenderBox);

    final tooltipTargetGlobalLeft = targetRenderBox.localToGlobal(
        targetRenderBox.size.centerLeft(Offset.zero),
        ancestor: overlayRenderBox);

    final tooltipTargetGlobalRight = targetRenderBox.localToGlobal(
        targetRenderBox.size.centerRight(Offset.zero),
        ancestor: overlayRenderBox);

    if (Directionality.of(context) == TextDirection.rtl ||
        tooltipPosition == BaconTooltipPosition.horizontal ||
        tooltipPosition == BaconTooltipPosition.vertical) {
      switch (tooltipPosition) {
        case BaconTooltipPosition.left:
          tooltipPosition = BaconTooltipPosition.right;
        case BaconTooltipPosition.right:
          tooltipPosition = BaconTooltipPosition.left;
        case BaconTooltipPosition.topLeft:
          tooltipPosition = BaconTooltipPosition.topRight;
        case BaconTooltipPosition.topRight:
          tooltipPosition = BaconTooltipPosition.topLeft;
        case BaconTooltipPosition.bottomLeft:
          tooltipPosition = BaconTooltipPosition.bottomRight;
        case BaconTooltipPosition.bottomRight:
          tooltipPosition = BaconTooltipPosition.bottomLeft;
        case BaconTooltipPosition.vertical:
          tooltipPosition = tooltipTargetGlobalCenter.dy <
                  overlayRenderBox.size.center(Offset.zero).dy
              ? BaconTooltipPosition.bottom
              : BaconTooltipPosition.top;
        case BaconTooltipPosition.horizontal:
          tooltipPosition = tooltipTargetGlobalCenter.dx <
                  overlayRenderBox.size.center(Offset.zero).dx
              ? BaconTooltipPosition.right
              : BaconTooltipPosition.left;
        default:
          break;
      }
    }

    final tooltipPositionParameters = _resolveTooltipPositionParameters(
      tooltipPosition: tooltipPosition,
      arrowTipDistance: effectiveArrowTipDistance,
      arrowLength: effectiveArrowLength,
      overlayWidth: overlayRenderBox.size.width,
      tooltipTargetGlobalLeft: tooltipTargetGlobalLeft.dx,
      tooltipTargetGlobalCenter: tooltipTargetGlobalCenter.dx,
      tooltipTargetGlobalRight: tooltipTargetGlobalRight.dx,
    );

    return Semantics(
      label: widget.semanticLabel,
      child: GestureDetector(
        excludeFromSemantics: true,
        behavior: HitTestBehavior.translucent,
        onTapDown: _handleTap,
        child: UnconstrainedBox(
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: tooltipPositionParameters.offset,
            followerAnchor: tooltipPositionParameters.followerAnchor,
            targetAnchor: tooltipPositionParameters.targetAnchor,
            child: RepaintBoundary(
              child: FadeTransition(
                opacity: _curvedAnimation!,
                child: Container(
                  key: _tooltipKey,
                  constraints: BoxConstraints(
                      maxWidth: tooltipPositionParameters.tooltipMaxWidth),
                  padding: resolvedContentPadding,
                  decoration: ShapeDecorationWithPremultipliedAlpha(
                    color: effectiveBackgroundColor,
                    shadows: effectiveTooltipShadows,
                    shape: TooltipShape(
                      arrowBaseWidth: effectiveArrowBaseWidth,
                      arrowLength: effectiveArrowLength,
                      arrowOffset: widget.arrowOffsetValue,
                      arrowTipDistance: effectiveArrowTipDistance,
                      borderColor: widget.borderColor,
                      borderRadius: resolvedBorderRadius,
                      borderWidth: widget.borderWidth,
                      childWidth: targetRenderBox.size.width,
                      tooltipPosition: tooltipPosition,
                    ),
                  ),
                  child: IconTheme(
                    data: IconThemeData(
                      color: effectiveIconColor,
                      size: effectiveIconSize,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.leading != null)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8.0),
                            child: widget.leading,
                          ),
                        widget.content != null
                            ? Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DefaultTextStyle(
                                      style: effectiveTextStyle.copyWith(
                                        color: effectiveTitleColor,
                                      ),
                                      child: widget.title,
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                        top: 8.0,
                                      ),
                                      child: DefaultTextStyle(
                                        style: effectiveTextStyle.copyWith(
                                          color: effectiveContentColor,
                                        ),
                                        child: widget.content!,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : DefaultTextStyle(
                                style: effectiveTextStyle.copyWith(
                                  color: effectiveTitleColor,
                                ),
                                child: widget.title,
                              ),
                        if (widget.trailing != null) widget.trailing!,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Duration effectiveTransitionDuration = widget.transitionDuration ??
        context.baconTheme?.tooltipTheme.properties.transitionDuration ??
        const Duration(milliseconds: 150);

    final Curve effectiveTransitionCurve = widget.transitionCurve ??
        context.baconTheme?.tooltipTheme.properties.transitionCurve ??
        BaconTransitions.transitions.transitionCurve;

    _animationController ??= AnimationController(
      duration: effectiveTransitionDuration,
      vsync: this,
    );

    _curvedAnimation ??= CurvedAnimation(
      parent: _animationController!,
      curve: effectiveTransitionCurve,
    );

    return CompositedTransformTarget(
      link: _layerLink,
      child: widget.child,
    );
  }
}

class _TooltipPositionProperties {
  final Offset offset;
  final Alignment followerAnchor;
  final Alignment targetAnchor;
  final double tooltipMaxWidth;

  _TooltipPositionProperties({
    required this.offset,
    required this.followerAnchor,
    required this.targetAnchor,
    required this.tooltipMaxWidth,
  });
}
