import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseRadiiSemanticTokensShape
    extends ThemeExtension<BaconBaseRadiiSemanticTokensShape>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry surface;
  final BorderRadiusGeometry x3s;
  final BorderRadiusGeometry x2s;
  final BorderRadiusGeometry xs;
  final BorderRadiusGeometry sm;
  final BorderRadiusGeometry md;
  final BorderRadiusGeometry lg;
  final BorderRadiusGeometry xl;
  final BorderRadiusGeometry x2l;
  final BorderRadiusGeometry x3l;
  final double defaultBorderWidth;
  final double activeBorderWidth;

  const BaconBaseRadiiSemanticTokensShape({
    required this.surface,
    required this.x3s,
    required this.x2s,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.x2l,
    required this.x3l,
    required this.defaultBorderWidth,
    required this.activeBorderWidth,
  });

  @override
  BaconBaseRadiiSemanticTokensShape lerp(
    ThemeExtension<BaconBaseRadiiSemanticTokensShape>? other,
    double t,
  ) {
    if (other is! BaconBaseRadiiSemanticTokensShape) return this;

    return BaconBaseRadiiSemanticTokensShape(
      surface: BorderRadiusGeometry.lerp(surface, other.surface, t)!,
      x3s: BorderRadiusGeometry.lerp(x3s, other.x3s, t)!,
      x2s: BorderRadiusGeometry.lerp(x2s, other.x2s, t)!,
      xs: BorderRadiusGeometry.lerp(xs, other.xs, t)!,
      sm: BorderRadiusGeometry.lerp(sm, other.sm, t)!,
      md: BorderRadiusGeometry.lerp(md, other.md, t)!,
      lg: BorderRadiusGeometry.lerp(lg, other.lg, t)!,
      xl: BorderRadiusGeometry.lerp(xl, other.xl, t)!,
      x2l: BorderRadiusGeometry.lerp(x2l, other.x2l, t)!,
      x3l: BorderRadiusGeometry.lerp(x3l, other.x3l, t)!,
      defaultBorderWidth:
          lerpDouble(defaultBorderWidth, other.defaultBorderWidth, t)!,
      activeBorderWidth:
          lerpDouble(activeBorderWidth, other.activeBorderWidth, t)!,
    );
  }

  @override
  BaconBaseRadiiSemanticTokensShape copyWith({
    BorderRadiusGeometry? surface,
    BorderRadiusGeometry? x3s,
    BorderRadiusGeometry? x2s,
    BorderRadiusGeometry? xs,
    BorderRadiusGeometry? sm,
    BorderRadiusGeometry? md,
    BorderRadiusGeometry? lg,
    BorderRadiusGeometry? xl,
    BorderRadiusGeometry? x2l,
    BorderRadiusGeometry? x3l,
    double? defaultBorderWidth,
    double? activeBorderWidth,
  }) {
    return BaconBaseRadiiSemanticTokensShape(
      surface: surface ?? this.surface,
      x3s: x3s ?? this.x3s,
      x2s: x2s ?? this.x2s,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      x2l: x2l ?? this.x2l,
      x3l: x3l ?? this.x3l,
      defaultBorderWidth: defaultBorderWidth ?? this.defaultBorderWidth,
      activeBorderWidth: activeBorderWidth ?? this.activeBorderWidth,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconBaseRadiiSemanticTokensShape"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("surface", surface))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("x3s", x3s))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("x2s", x2s))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("xs", xs))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("sm", sm))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("md", md))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("lg", lg))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("xl", xl))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("x2l", x2l))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("x3l", x3l))
      ..add(
          DiagnosticsProperty<double>("defaultBorderWidth", defaultBorderWidth))
      ..add(
          DiagnosticsProperty<double>("activeBorderWidth", activeBorderWidth));
  }
}
