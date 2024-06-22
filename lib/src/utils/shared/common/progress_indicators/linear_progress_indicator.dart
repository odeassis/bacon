import 'package:flutter/widgets.dart';

import 'base_progress.dart';
import 'painters/linear_progress_indicator.dart';

class BaconLinearProgressIndicator extends BaconBaseProgressIndicator {
  /// The container radius of the linear progress indicator.
  final BorderRadiusGeometry containerRadius;

  /// The progress radius of the linear progress indicator.
  final BorderRadiusGeometry progressRadius;

  /// The minimum height of the linear progress indicator.
  final double minHeight;

  /// Creates a Bacon Design linear progress indicator.
  const BaconLinearProgressIndicator({
    super.key,
    super.value,
    required super.backgroundColor,
    required super.color,
    super.valueColor,
    super.semanticsLabel,
    super.semanticsValue,
    this.minHeight = 4,
    this.containerRadius = BorderRadius.zero,
    this.progressRadius = BorderRadius.zero,
  }) : assert(minHeight > 0);

  /// The color of the linear track that forms the background for the linear progress indicator.
  @override
  Color get backgroundColor => super.backgroundColor;

  @override
  State<BaconLinearProgressIndicator> createState() =>
      _BaconLinearProgressIndicatorState();
}

class _BaconLinearProgressIndicatorState
    extends State<BaconLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  static const int _kIndeterminateLinearDuration = 1800;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: _kIndeterminateLinearDuration),
      vsync: this,
    );

    if (widget.value == null) _controller.repeat();
  }

  @override
  void didUpdateWidget(BaconLinearProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.value == null && !_controller.isAnimating) {
      _controller.repeat();
    } else if (widget.value != null && _controller.isAnimating) {
      _controller.stop();
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  Widget buildStaticProgressIndicator(BuildContext context,
      double animationValue, TextDirection textDirection) {
    final BorderRadius resolvedContainerRadius =
        widget.containerRadius.resolve(Directionality.of(context));
    final BorderRadius resolvedProgressRadius =
        widget.progressRadius.resolve(Directionality.of(context));

    return widget.buildSemanticsWrapper(
      context: context,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: widget.minHeight,
        ),
        child: RepaintBoundary(
          child: CustomPaint(
            painter: BaconLinearProgressIndicatorPainter(
              backgroundColor: widget.backgroundColor,
              valueColor: widget.color,
              value: widget.value,
              // May be null.
              animationValue: animationValue,
              // Ignored if 'widget.value' is not null.
              containerRadius: resolvedContainerRadius,
              progressRadius: resolvedProgressRadius,
              textDirection: textDirection,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextDirection textDirection = Directionality.of(context);

    if (widget.value != null) {
      return buildStaticProgressIndicator(
          context, _controller.value, textDirection);
    }

    return AnimatedBuilder(
      animation: _controller.view,
      builder: (BuildContext context, Widget? child) {
        return buildStaticProgressIndicator(
            context, _controller.value, textDirection);
      },
    );
  }
}
