import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class BaconShapeTheme {
  const BaconShapeTheme({
    required this.surface,
    required this.componentBorderRadiusXXS,
    required this.componentBorderRadiusXS,
    required this.componentBorderRadiusX,
    required this.componentBorderRadiusM,
    required this.componentBorderRadiusL,
    required this.componentBorderRadiusXL,
  });

  final double surface;
  final double componentBorderRadiusXXS;
  final double componentBorderRadiusXS;
  final double componentBorderRadiusX;
  final double componentBorderRadiusM;
  final double componentBorderRadiusL;
  final double componentBorderRadiusXL;

  static BaconShapeTheme lerp(
    BaconShapeTheme a,
    BaconShapeTheme b,
    double t,
  ) {
    return BaconShapeTheme(
      surface: lerpDouble(a.surface, b.surface, t)!,
      componentBorderRadiusXXS: lerpDouble(
          a.componentBorderRadiusXXS, b.componentBorderRadiusXXS, t)!,
      componentBorderRadiusXS:
          lerpDouble(a.componentBorderRadiusXS, b.componentBorderRadiusXS, t)!,
      componentBorderRadiusX:
          lerpDouble(a.componentBorderRadiusX, b.componentBorderRadiusX, t)!,
      componentBorderRadiusM:
          lerpDouble(a.componentBorderRadiusM, b.componentBorderRadiusM, t)!,
      componentBorderRadiusL:
          lerpDouble(a.componentBorderRadiusL, b.componentBorderRadiusL, t)!,
      componentBorderRadiusXL:
          lerpDouble(a.componentBorderRadiusXL, b.componentBorderRadiusXL, t)!,
    );
  }

  BaconShapeTheme copyWith({
    double? surface,
    double? componentBorderRadiusXXS,
    double? componentBorderRadiusXS,
    double? componentBorderRadiusX,
    double? componentBorderRadiusM,
    double? componentBorderRadiusL,
    double? componentBorderRadiusXL,
  }) {
    return BaconShapeTheme(
      surface: surface ?? this.surface,
      componentBorderRadiusXXS:
          componentBorderRadiusXXS ?? this.componentBorderRadiusXXS,
      componentBorderRadiusXS:
          componentBorderRadiusXS ?? this.componentBorderRadiusXS,
      componentBorderRadiusX:
          componentBorderRadiusX ?? this.componentBorderRadiusX,
      componentBorderRadiusM:
          componentBorderRadiusM ?? this.componentBorderRadiusM,
      componentBorderRadiusL:
          componentBorderRadiusL ?? this.componentBorderRadiusL,
      componentBorderRadiusXL:
          componentBorderRadiusXL ?? this.componentBorderRadiusXL,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BaconShapeTheme &&
        other.surface == surface &&
        other.componentBorderRadiusXXS == componentBorderRadiusXXS &&
        other.componentBorderRadiusXS == componentBorderRadiusXS &&
        other.componentBorderRadiusX == componentBorderRadiusX &&
        other.componentBorderRadiusM == componentBorderRadiusM &&
        other.componentBorderRadiusL == componentBorderRadiusL &&
        other.componentBorderRadiusXL == componentBorderRadiusXL;
  }

  @override
  int get hashCode {
    return surface.hashCode ^
        componentBorderRadiusXXS.hashCode ^
        componentBorderRadiusXS.hashCode ^
        componentBorderRadiusX.hashCode ^
        componentBorderRadiusM.hashCode ^
        componentBorderRadiusL.hashCode ^
        componentBorderRadiusXL.hashCode;
  }
}
