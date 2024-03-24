import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseScale extends ThemeExtension<BaconBaseScale>
    with DiagnosticableTreeMixin {
  final double xxxs;
  final double xxs;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double xxxl;

  const BaconBaseScale({
    required this.xxxs,
    required this.xxs,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
    required this.xxxl,
  });

  @override
  ThemeExtension<BaconBaseScale> copyWith({
    double? xxxs,
    double? xxs,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
    double? xxxl,
  }) {
    return BaconBaseScale(
      xxxs: xxxs ?? this.xxxs,
      xxs: xxs ?? this.xxs,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
      xxxl: xxxl ?? this.xxxl,
    );
  }

  @override
  BaconBaseScale lerp(
      covariant ThemeExtension<BaconBaseScale>? other, double t) {
    if (other is! BaconBaseScale) return this;

    return BaconBaseScale(
      xxxs: lerpDouble(xxxs, other.xxxs, t)!,
      xxs: lerpDouble(xxs, other.xxs, t)!,
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      xxl: lerpDouble(xxl, other.xxl, t)!,
      xxxl: lerpDouble(xxxl, other.xxxl, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', "BaconBaseScale"));
    properties.add(DoubleProperty('xxxs', xxxs));
    properties.add(DoubleProperty('xxs', xxs));
    properties.add(DoubleProperty('xs', xs));
    properties.add(DoubleProperty('sm', sm));
    properties.add(DoubleProperty('md', md));
    properties.add(DoubleProperty('lg', lg));
    properties.add(DoubleProperty('xl', xl));
    properties.add(DoubleProperty('xxl', xxl));
    properties.add(DoubleProperty('xxxl', xxxl));
  }
}
