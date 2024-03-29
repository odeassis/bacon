import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseGapSemanticTokensScale
    extends ThemeExtension<BaconBaseGapSemanticTokensScale>
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
  final double negativeX3s;
  final double negativeX2s;
  final double negativeXs;
  final double negativeSm;
  final double negativeMd;
  final double negativeLg;
  final double negativeXl;
  final double negativeX2l;
  final double negativeX3l;

  const BaconBaseGapSemanticTokensScale({
    required this.x3s,
    required this.x2s,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.x2l,
    required this.x3l,
    required this.negativeX3s,
    required this.negativeX2s,
    required this.negativeXs,
    required this.negativeSm,
    required this.negativeMd,
    required this.negativeLg,
    required this.negativeXl,
    required this.negativeX2l,
    required this.negativeX3l,
  });

  @override
  BaconBaseGapSemanticTokensScale copyWith({
    double? x3s,
    double? x2s,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? x2l,
    double? x3l,
    double? negativeX3s,
    double? negativeX2s,
    double? negativeXs,
    double? negativeSm,
    double? negativeMd,
    double? negativeLg,
    double? negativeXl,
    double? negativeX2l,
    double? negativeX3l,
  }) {
    return BaconBaseGapSemanticTokensScale(
      x3s: x3s ?? this.x3s,
      x2s: x2s ?? this.x2s,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      x2l: x2l ?? this.x2l,
      x3l: x3l ?? this.x3l,
      negativeX3s: negativeX3s ?? this.negativeX3s,
      negativeX2s: negativeX2s ?? this.negativeX2s,
      negativeXs: negativeXs ?? this.negativeXs,
      negativeSm: negativeSm ?? this.negativeSm,
      negativeMd: negativeMd ?? this.negativeMd,
      negativeLg: negativeLg ?? this.negativeLg,
      negativeXl: negativeXl ?? this.negativeXl,
      negativeX2l: negativeX2l ?? this.negativeX2l,
      negativeX3l: negativeX3l ?? this.negativeX3l,
    );
  }

  @override
  BaconBaseGapSemanticTokensScale lerp(
      ThemeExtension<BaconBaseGapSemanticTokensScale>? other, double t) {
    if (other is! BaconBaseGapSemanticTokensScale) return this;

    return BaconBaseGapSemanticTokensScale(
      x3s: lerpDouble(x3s, other.x3s, t)!,
      x2s: lerpDouble(x2s, other.x2s, t)!,
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      x2l: lerpDouble(x2l, other.x2l, t)!,
      x3l: lerpDouble(x3l, other.x3l, t)!,
      negativeX3s: lerpDouble(negativeX3s, other.negativeX3s, t)!,
      negativeX2s: lerpDouble(negativeX2s, other.negativeX2s, t)!,
      negativeXs: lerpDouble(negativeXs, other.negativeXs, t)!,
      negativeSm: lerpDouble(negativeSm, other.negativeSm, t)!,
      negativeMd: lerpDouble(negativeMd, other.negativeMd, t)!,
      negativeLg: lerpDouble(negativeLg, other.negativeLg, t)!,
      negativeXl: lerpDouble(negativeXl, other.negativeXl, t)!,
      negativeX2l: lerpDouble(negativeX2l, other.negativeX2l, t)!,
      negativeX3l: lerpDouble(negativeX3l, other.negativeX3l, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', "BaconBaseGapSemanticTokensScale"));
    properties.add(DoubleProperty('x3s', x3s));
    properties.add(DoubleProperty('x2s', x2s));
    properties.add(DoubleProperty('xs', xs));
    properties.add(DoubleProperty('sm', sm));
    properties.add(DoubleProperty('md', md));
    properties.add(DoubleProperty('lg', lg));
    properties.add(DoubleProperty('xl', xl));
    properties.add(DoubleProperty('x2l', x2l));
    properties.add(DoubleProperty('x3l', x3l));
    properties.add(DoubleProperty('negativeX3s', negativeX3s));
    properties.add(DoubleProperty('negativeX2s', negativeX2s));
    properties.add(DoubleProperty('negativeXs', negativeXs));
    properties.add(DoubleProperty('negativeSm', negativeSm));
    properties.add(DoubleProperty('negativeMd', negativeMd));
    properties.add(DoubleProperty('negativeLg', negativeLg));
    properties.add(DoubleProperty('negativeXl', negativeXl));
    properties.add(DoubleProperty('negativeX2l', negativeX2l));
    properties.add(DoubleProperty('negativeX3l', negativeX3l));
  }
}
