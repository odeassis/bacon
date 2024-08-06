import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HiveTransitions extends ThemeExtension<HiveTransitions>
    with DiagnosticableTreeMixin {
  static const transitions = HiveTransitions(
    transitionDuration: Duration(milliseconds: 300),
    transitionCurve: Curves.easeInOutCubic,
  );

  final Duration transitionDuration;
  final Curve transitionCurve;

  const HiveTransitions({
    required this.transitionDuration,
    required this.transitionCurve,
  });

  @override
  HiveTransitions copyWith({
    Duration? transitionDuration,
    Curve? transitionCurve,
  }) {
    return HiveTransitions(
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
    );
  }

  @override
  HiveTransitions lerp(ThemeExtension<HiveTransitions>? other, double t) {
    if (other is! HiveTransitions) return this;
    return HiveTransitions(
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      transitionCurve: other.transitionCurve,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('transitionDuration', transitionDuration));
    properties.add(DiagnosticsProperty<Duration>(
        'transitionDuration', transitionDuration));
    properties
        .add(DiagnosticsProperty<Curve>('transitionCurve', transitionCurve));
  }
}
