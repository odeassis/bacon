import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseShape extends ThemeExtension<BaconBaseShape>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry surface;
  final BorderRadiusGeometry xxs;
  final BorderRadiusGeometry xs;
  final BorderRadiusGeometry x;
  final BorderRadiusGeometry md;
  final BorderRadiusGeometry lg;
  final BorderRadiusGeometry xl;
  final double defaultBorderWidth;
  final double activeBorderWidth;

  const BaconBaseShape({
    required this.surface,
    required this.xxs,
    required this.xs,
    required this.x,
    required this.md,
    required this.lg,
    required this.xl,
    required this.defaultBorderWidth,
    required this.activeBorderWidth,
  });

  @override
  BaconBaseShape lerp(
    ThemeExtension<BaconBaseShape>? other,
    double t,
  ) {
    if (other is! BaconBaseShape) return this;

    return BaconBaseShape(
      surface: BorderRadiusGeometry.lerp(surface, other.surface, t)!,
      xxs: BorderRadiusGeometry.lerp(xxs, other.xxs, t)!,
      xs: BorderRadiusGeometry.lerp(xs, other.xs, t)!,
      x: BorderRadiusGeometry.lerp(x, other.x, t)!,
      md: BorderRadiusGeometry.lerp(md, other.md, t)!,
      lg: BorderRadiusGeometry.lerp(lg, other.lg, t)!,
      xl: BorderRadiusGeometry.lerp(xl, other.xl, t)!,
      defaultBorderWidth:
          lerpDouble(defaultBorderWidth, other.defaultBorderWidth, t)!,
      activeBorderWidth:
          lerpDouble(activeBorderWidth, other.activeBorderWidth, t)!,
    );
  }

  @override
  BaconBaseShape copyWith({
    BorderRadiusGeometry? surface,
    BorderRadiusGeometry? xxs,
    BorderRadiusGeometry? xs,
    BorderRadiusGeometry? x,
    BorderRadiusGeometry? md,
    BorderRadiusGeometry? lg,
    BorderRadiusGeometry? xl,
    double? defaultBorderWidth,
    double? activeBorderWidth,
  }) {
    return BaconBaseShape(
      surface: surface ?? this.surface,
      xxs: xxs ?? this.xxs,
      xs: xs ?? this.xs,
      x: x ?? this.x,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      defaultBorderWidth: defaultBorderWidth ?? this.defaultBorderWidth,
      activeBorderWidth: activeBorderWidth ?? this.activeBorderWidth,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconBaseShape"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("surface", surface))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("xxs", xxs))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("xs", xs))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("X", x))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("M", md))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("L", lg))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>("xl", xl))
      ..add(
          DiagnosticsProperty<double>("defaultBorderWidth", defaultBorderWidth))
      ..add(
          DiagnosticsProperty<double>("activeBorderWidth", activeBorderWidth));
  }
}
