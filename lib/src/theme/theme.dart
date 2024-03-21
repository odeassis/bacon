import 'package:bacon/src/theme/data.dart';
import 'package:flutter/material.dart';

class BaconTheme extends StatelessWidget {
  const BaconTheme({
    super.key,
    required this.data,
    required this.child,
  });

  final BaconThemeData data;
  final Widget child;

  static BaconThemeData of(BuildContext context) {
    final inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<BaconInheritedTheme>();
    return inheritedTheme!.theme.data;
  }

  @override
  Widget build(BuildContext context) {
    return BaconInheritedTheme(
      theme: this,
      child: child,
    );
  }
}

class BaconInheritedTheme extends InheritedTheme {
  const BaconInheritedTheme({
    super.key,
    required this.theme,
    required super.child,
  });

  final BaconTheme theme;

  @override
  bool updateShouldNotify(BaconInheritedTheme oldWidget) =>
      theme.data != oldWidget.theme.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return BaconTheme(
      data: theme.data,
      child: child,
    );
  }
}

/// An interpolation between two [BaconThemeData]s.
///
/// This class specializes the interpolation of [Tween<BaconThemeData>] to call
/// the [BaconThemeData.lerp] method.
///
/// see [Tween] for a discussion on how to use interpolation objects.
class BaconThemeDataTween extends Tween<BaconThemeData> {
  /// Creates a [BaconThemeData] tween.
  ///
  /// The [begin] and [end] properties must be non-null before the tween is
  /// first used, but the arguments can be null if the values are going to be
  /// filled in later.
  BaconThemeDataTween({
    super.begin,
    super.end,
  });

  @override
  BaconThemeData lerp(double t) {
    return BaconThemeData.lerp(begin!, end!, t);
  }
}

class BaconAnimatedTheme extends ImplicitlyAnimatedWidget {
  const BaconAnimatedTheme({
    super.key,
    required this.data,
    required this.child,
    super.curve,
    super.duration = const Duration(milliseconds: 200),
    super.onEnd,
  });

  final BaconThemeData data;
  final Widget child;

  @override
  AnimatedWidgetBaseState<BaconAnimatedTheme> createState() =>
      _BaconAnimatedThemeState();
}

class _BaconAnimatedThemeState
    extends AnimatedWidgetBaseState<BaconAnimatedTheme> {
  BaconThemeDataTween? _tween;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _tween = visitor(
      _tween,
      widget.data,
      (dynamic value) => BaconThemeDataTween(begin: value as BaconThemeData),
    )! as BaconThemeDataTween;
  }

  @override
  Widget build(BuildContext context) {
    return BaconTheme(
      data: _tween!.evaluate(animation),
      child: widget.child,
    );
  }
}
