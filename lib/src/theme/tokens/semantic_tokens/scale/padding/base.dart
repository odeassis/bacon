import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBasePaddingSemanticTokensScale
    extends ThemeExtension<BaconBasePaddingSemanticTokensScale>
    with DiagnosticableTreeMixin {
  final double x3s;
  final double x2s;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double x2l;
  final double x3l;

  const BaconBasePaddingSemanticTokensScale({
    required this.x3s,
    required this.x2s,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.x2l,
    required this.x3l,
  });

  @override
  BaconBasePaddingSemanticTokensScale copyWith({
    double? x3s,
    double? x2s,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? x2l,
    double? x3l,
  }) {
    return BaconBasePaddingSemanticTokensScale(
      x3s: x3s ?? this.x3s,
      x2s: x2s ?? this.x2s,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      x2l: x2l ?? this.x2l,
      x3l: x3l ?? this.x3l,
    );
  }

  @override
  BaconBasePaddingSemanticTokensScale lerp(
      ThemeExtension<BaconBasePaddingSemanticTokensScale>? other, double t) {
    if (other is! BaconBasePaddingSemanticTokensScale) return this;

    return BaconBasePaddingSemanticTokensScale(
      x3s: lerpDouble(x3s, other.x3s, t)!,
      x2s: lerpDouble(x2s, other.x2s, t)!,
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      x2l: lerpDouble(x2l, other.x2l, t)!,
      x3l: lerpDouble(x3l, other.x3l, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', "BaconBasePaddingSemanticTokensScale"));
    properties.add(DoubleProperty('x3s', x3s));
    properties.add(DoubleProperty('x2s', x2s));
    properties.add(DoubleProperty('xs', xs));
    properties.add(DoubleProperty('sm', sm));
    properties.add(DoubleProperty('md', md));
    properties.add(DoubleProperty('lg', lg));
    properties.add(DoubleProperty('xl', xl));
    properties.add(DoubleProperty('x2l', x2l));
    properties.add(DoubleProperty('x3l', x3l));
  }
}
