import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBasePrimitiveShape extends ThemeExtension<BaconBasePrimitiveShape>
    with DiagnosticableTreeMixin {
  final double shape0;
  final double shape2;
  final double shape4;
  final double shape6;
  final double shape8;
  final double shape12;
  final double shape16;
  final double shape20;
  final double shape24;
  final double shape32;
  final double shape40;
  final double shape100;

  const BaconBasePrimitiveShape({
    required this.shape0,
    required this.shape2,
    required this.shape4,
    required this.shape6,
    required this.shape8,
    required this.shape12,
    required this.shape16,
    required this.shape20,
    required this.shape24,
    required this.shape32,
    required this.shape40,
    required this.shape100,
  });

  @override
  BaconBasePrimitiveShape copyWith({
    double? shape0,
    double? shape2,
    double? shape4,
    double? shape6,
    double? shape8,
    double? shape12,
    double? shape16,
    double? shape20,
    double? shape24,
    double? shape32,
    double? shape40,
    double? shape100,
  }) {
    return BaconBasePrimitiveShape(
      shape0: shape0 ?? this.shape0,
      shape2: shape2 ?? this.shape2,
      shape4: shape4 ?? this.shape4,
      shape6: shape6 ?? this.shape6,
      shape8: shape8 ?? this.shape8,
      shape12: shape12 ?? this.shape12,
      shape16: shape16 ?? this.shape16,
      shape20: shape20 ?? this.shape20,
      shape24: shape24 ?? this.shape24,
      shape32: shape32 ?? this.shape32,
      shape40: shape40 ?? this.shape40,
      shape100: shape100 ?? this.shape100,
    );
  }

  @override
  BaconBasePrimitiveShape lerp(
      ThemeExtension<BaconBasePrimitiveShape>? other, double t) {
    if (other is! BaconBasePrimitiveShape) return this;

    return BaconBasePrimitiveShape(
      shape0: lerpDouble(shape0, other.shape0, t)!,
      shape2: lerpDouble(shape2, other.shape2, t)!,
      shape4: lerpDouble(shape4, other.shape4, t)!,
      shape6: lerpDouble(shape6, other.shape6, t)!,
      shape8: lerpDouble(shape8, other.shape8, t)!,
      shape12: lerpDouble(shape12, other.shape12, t)!,
      shape16: lerpDouble(shape16, other.shape16, t)!,
      shape20: lerpDouble(shape20, other.shape20, t)!,
      shape24: lerpDouble(shape24, other.shape24, t)!,
      shape32: lerpDouble(shape32, other.shape32, t)!,
      shape40: lerpDouble(shape40, other.shape40, t)!,
      shape100: lerpDouble(shape100, other.shape100, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', "BaconBasePrimitiveShape"));
    properties.add(DiagnosticsProperty<double>('shape0', shape0));
    properties.add(DiagnosticsProperty<double>('shape2', shape2));
    properties.add(DiagnosticsProperty<double>('shape4', shape4));
    properties.add(DiagnosticsProperty<double>('shape6', shape6));
    properties.add(DiagnosticsProperty<double>('shape8', shape8));
    properties.add(DiagnosticsProperty<double>('shape12', shape12));
    properties.add(DiagnosticsProperty<double>('shape16', shape16));
    properties.add(DiagnosticsProperty<double>('shape20', shape20));
    properties.add(DiagnosticsProperty<double>('shape24', shape24));
    properties.add(DiagnosticsProperty<double>('shape32', shape32));
    properties.add(DiagnosticsProperty<double>('shape40', shape40));
    properties.add(DiagnosticsProperty<double>('shape44', shape100));
  }
}
