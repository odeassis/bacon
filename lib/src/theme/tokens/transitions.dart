import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTransitions extends ThemeExtension<BaconTransitions>
    with DiagnosticableTreeMixin {
  static const transitions = BaconTransitions(
    transitionDuration: Duration(milliseconds: 300),
    transitionCurve: Curves.easeInOutCubic,
  );

  final Duration transitionDuration;
  final Curve transitionCurve;

  const BaconTransitions({
    required this.transitionDuration,
    required this.transitionCurve,
  });

  @override
  BaconTransitions copyWith({
    Duration? transitionDuration,
    Curve? transitionCurve,
  }) {
    return BaconTransitions(
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
    );
  }

  @override
  BaconTransitions lerp(ThemeExtension<BaconTransitions>? other, double t) {
    if (other is! BaconTransitions) return this;
    return BaconTransitions(
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
