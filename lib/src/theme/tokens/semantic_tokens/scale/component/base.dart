import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseComponentsSemanticTokensScale
    extends ThemeExtension<BaconBaseComponentsSemanticTokensScale>
    with DiagnosticableTreeMixin {
  final double x7s;
  final double x6s;
  final double x5s;
  final double x4s;
  final double x3s;
  final double x2s;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double x2l;
  final double x3l;
  final double x4l;
  final double x5l;
  final double x6l;
  final double x7l;

  const BaconBaseComponentsSemanticTokensScale({
    required this.x7s,
    required this.x6s,
    required this.x5s,
    required this.x4s,
    required this.x3s,
    required this.x2s,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.x2l,
    required this.x3l,
    required this.x4l,
    required this.x5l,
    required this.x6l,
    required this.x7l,
  });

  @override
  BaconBaseComponentsSemanticTokensScale copyWith({
    double? x7s,
    double? x6s,
    double? x5s,
    double? x4s,
    double? x3s,
    double? x2s,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? x2l,
    double? x3l,
    double? x4l,
    double? x5l,
    double? x6l,
    double? x7l,
  }) {
    return BaconBaseComponentsSemanticTokensScale(
      x7s: x7s ?? this.x7s,
      x6s: x6s ?? this.x6s,
      x5s: x5s ?? this.x5s,
      x4s: x4s ?? this.x4s,
      x3s: x3s ?? this.x3s,
      x2s: x2s ?? this.x2s,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      x2l: x2l ?? this.x2l,
      x3l: x3l ?? this.x3l,
      x4l: x4l ?? this.x4l,
      x5l: x5l ?? this.x5l,
      x6l: x6l ?? this.x6l,
      x7l: x7l ?? this.x7l,
    );
  }

  @override
  BaconBaseComponentsSemanticTokensScale lerp(
      ThemeExtension<BaconBaseComponentsSemanticTokensScale>? other, double t) {
    if (other is! BaconBaseComponentsSemanticTokensScale) return this;

    return BaconBaseComponentsSemanticTokensScale(
      x7s: lerpDouble(x7s, other.x7s, t)!,
      x6s: lerpDouble(x6s, other.x6s, t)!,
      x5s: lerpDouble(x5s, other.x5s, t)!,
      x4s: lerpDouble(x4s, other.x4s, t)!,
      x3s: lerpDouble(x3s, other.x3s, t)!,
      x2s: lerpDouble(x2s, other.x2s, t)!,
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      x2l: lerpDouble(x2l, other.x2l, t)!,
      x3l: lerpDouble(x3l, other.x3l, t)!,
      x4l: lerpDouble(x4l, other.x4l, t)!,
      x5l: lerpDouble(x5l, other.x5l, t)!,
      x6l: lerpDouble(x6l, other.x6l, t)!,
      x7l: lerpDouble(x7l, other.x7l, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', "BaconBaseComponentsSemanticTokensScale"));
    properties.add(DoubleProperty('x7s', x7s));
    properties.add(DoubleProperty('x6s', x6s));
    properties.add(DoubleProperty('x5s', x5s));
    properties.add(DoubleProperty('x4s', x4s));
    properties.add(DoubleProperty('x3s', x3s));
    properties.add(DoubleProperty('x2s', x2s));
    properties.add(DoubleProperty('xs', xs));
    properties.add(DoubleProperty('sm', sm));
    properties.add(DoubleProperty('md', md));
    properties.add(DoubleProperty('lg', lg));
    properties.add(DoubleProperty('xl', xl));
    properties.add(DoubleProperty('x2l', x2l));
    properties.add(DoubleProperty('x3l', x3l));
    properties.add(DoubleProperty('x4l', x4l));
    properties.add(DoubleProperty('x5l', x5l));
    properties.add(DoubleProperty('x6l', x6l));
    properties.add(DoubleProperty('x7l', x7l));
  }
}
