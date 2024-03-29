import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBasePrimitiveSpace extends ThemeExtension<BaconBasePrimitiveSpace>
    with DiagnosticableTreeMixin {
  final double space0;
  final double space2;
  final double space4;
  final double space6;
  final double space8;
  final double space12;
  final double space16;
  final double space20;
  final double space24;
  final double space32;
  final double space40;
  final double space44;
  final double space48;
  final double space56;
  final double space64;
  final double space72;
  final double space80;
  final double space88;
  final double space96;
  final double space104;
  final double space112;
  final double space120;
  final double space128;
  final double negativeSpace2;
  final double negativeSpace4;
  final double negativeSpace6;
  final double negativeSpace8;
  final double negativeSpace12;
  final double negativeSpace16;
  final double negativeSpace20;
  final double negativeSpace24;
  final double negativeSpace32;
  final double negativeSpace40;
  final double negativeSpace44;
  final double negativeSpace48;

  const BaconBasePrimitiveSpace({
    required this.space0,
    required this.space2,
    required this.space4,
    required this.space6,
    required this.space8,
    required this.space12,
    required this.space16,
    required this.space20,
    required this.space24,
    required this.space32,
    required this.space40,
    required this.space44,
    required this.space48,
    required this.space56,
    required this.space64,
    required this.space72,
    required this.space80,
    required this.space88,
    required this.space96,
    required this.space104,
    required this.space112,
    required this.space120,
    required this.space128,
    required this.negativeSpace2,
    required this.negativeSpace4,
    required this.negativeSpace6,
    required this.negativeSpace8,
    required this.negativeSpace12,
    required this.negativeSpace16,
    required this.negativeSpace20,
    required this.negativeSpace24,
    required this.negativeSpace32,
    required this.negativeSpace40,
    required this.negativeSpace44,
    required this.negativeSpace48,
  });

  @override
  BaconBasePrimitiveSpace copyWith({
    double? space0,
    double? space2,
    double? space4,
    double? space6,
    double? space8,
    double? space12,
    double? space16,
    double? space20,
    double? space24,
    double? space32,
    double? space40,
    double? space44,
    double? space48,
    double? space56,
    double? space64,
    double? space72,
    double? space80,
    double? space88,
    double? space96,
    double? space104,
    double? space112,
    double? space120,
    double? space128,
    double? negativeSpace2,
    double? negativeSpace4,
    double? negativeSpace6,
    double? negativeSpace8,
    double? negativeSpace12,
    double? negativeSpace16,
    double? negativeSpace20,
    double? negativeSpace24,
    double? negativeSpace32,
    double? negativeSpace40,
    double? negativeSpace44,
    double? negativeSpace48,
  }) {
    return BaconBasePrimitiveSpace(
      space0: space0 ?? this.space0,
      space2: space2 ?? this.space2,
      space4: space4 ?? this.space4,
      space6: space6 ?? this.space6,
      space8: space8 ?? this.space8,
      space12: space12 ?? this.space12,
      space16: space16 ?? this.space16,
      space20: space20 ?? this.space20,
      space24: space24 ?? this.space24,
      space32: space32 ?? this.space32,
      space40: space40 ?? this.space40,
      space44: space44 ?? this.space44,
      space48: space48 ?? this.space48,
      space56: space56 ?? this.space56,
      space64: space64 ?? this.space64,
      space72: space72 ?? this.space72,
      space80: space80 ?? this.space80,
      space88: space88 ?? this.space88,
      space96: space96 ?? this.space96,
      space104: space104 ?? this.space104,
      space112: space112 ?? this.space112,
      space120: space120 ?? this.space120,
      space128: space128 ?? this.space128,
      negativeSpace2: negativeSpace2 ?? this.negativeSpace2,
      negativeSpace4: negativeSpace4 ?? this.negativeSpace4,
      negativeSpace6: negativeSpace6 ?? this.negativeSpace6,
      negativeSpace8: negativeSpace8 ?? this.negativeSpace8,
      negativeSpace12: negativeSpace12 ?? this.negativeSpace12,
      negativeSpace16: negativeSpace16 ?? this.negativeSpace16,
      negativeSpace20: negativeSpace20 ?? this.negativeSpace20,
      negativeSpace24: negativeSpace24 ?? this.negativeSpace24,
      negativeSpace32: negativeSpace32 ?? this.negativeSpace32,
      negativeSpace40: negativeSpace40 ?? this.negativeSpace40,
      negativeSpace44: negativeSpace44 ?? this.negativeSpace44,
      negativeSpace48: negativeSpace48 ?? this.negativeSpace48,
    );
  }

  @override
  BaconBasePrimitiveSpace lerp(
      ThemeExtension<BaconBasePrimitiveSpace>? other, double t) {
    if (other is! BaconBasePrimitiveSpace) return this;

    return BaconBasePrimitiveSpace(
      space0: lerpDouble(space0, other.space0, t)!,
      space2: lerpDouble(space2, other.space2, t)!,
      space4: lerpDouble(space4, other.space4, t)!,
      space6: lerpDouble(space6, other.space6, t)!,
      space8: lerpDouble(space8, other.space8, t)!,
      space12: lerpDouble(space12, other.space12, t)!,
      space16: lerpDouble(space16, other.space16, t)!,
      space20: lerpDouble(space20, other.space20, t)!,
      space24: lerpDouble(space24, other.space24, t)!,
      space32: lerpDouble(space32, other.space32, t)!,
      space40: lerpDouble(space40, other.space40, t)!,
      space44: lerpDouble(space44, other.space44, t)!,
      space48: lerpDouble(space48, other.space48, t)!,
      space56: lerpDouble(space56, other.space56, t)!,
      space64: lerpDouble(space64, other.space64, t)!,
      space72: lerpDouble(space72, other.space72, t)!,
      space80: lerpDouble(space80, other.space80, t)!,
      space88: lerpDouble(space88, other.space88, t)!,
      space96: lerpDouble(space96, other.space96, t)!,
      space104: lerpDouble(space104, other.space104, t)!,
      space112: lerpDouble(space112, other.space112, t)!,
      space120: lerpDouble(space120, other.space120, t)!,
      space128: lerpDouble(space128, other.space128, t)!,
      negativeSpace2: lerpDouble(negativeSpace2, other.negativeSpace2, t)!,
      negativeSpace4: lerpDouble(negativeSpace4, other.negativeSpace4, t)!,
      negativeSpace6: lerpDouble(negativeSpace6, other.negativeSpace6, t)!,
      negativeSpace8: lerpDouble(negativeSpace8, other.negativeSpace8, t)!,
      negativeSpace12: lerpDouble(negativeSpace12, other.negativeSpace12, t)!,
      negativeSpace16: lerpDouble(negativeSpace16, other.negativeSpace16, t)!,
      negativeSpace20: lerpDouble(negativeSpace20, other.negativeSpace20, t)!,
      negativeSpace24: lerpDouble(negativeSpace24, other.negativeSpace24, t)!,
      negativeSpace32: lerpDouble(negativeSpace32, other.negativeSpace32, t)!,
      negativeSpace40: lerpDouble(negativeSpace40, other.negativeSpace40, t)!,
      negativeSpace44: lerpDouble(negativeSpace44, other.negativeSpace44, t)!,
      negativeSpace48: lerpDouble(negativeSpace48, other.negativeSpace48, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', "BaconBasePrimitiveSpace"));
    properties.add(DiagnosticsProperty<double>('space0', space0));
    properties.add(DiagnosticsProperty<double>('space2', space2));
    properties.add(DiagnosticsProperty<double>('space4', space4));
    properties.add(DiagnosticsProperty<double>('space6', space6));
    properties.add(DiagnosticsProperty<double>('space8', space8));
    properties.add(DiagnosticsProperty<double>('space12', space12));
    properties.add(DiagnosticsProperty<double>('space16', space16));
    properties.add(DiagnosticsProperty<double>('space20', space20));
    properties.add(DiagnosticsProperty<double>('space24', space24));
    properties.add(DiagnosticsProperty<double>('space32', space32));
    properties.add(DiagnosticsProperty<double>('space40', space40));
    properties.add(DiagnosticsProperty<double>('space44', space44));
    properties.add(DiagnosticsProperty<double>('space48', space48));
    properties.add(DiagnosticsProperty<double>('space56', space56));
    properties.add(DiagnosticsProperty<double>('space64', space64));
    properties.add(DiagnosticsProperty<double>('space72', space72));
    properties.add(DiagnosticsProperty<double>('space80', space80));
    properties.add(DiagnosticsProperty<double>('space88', space88));
    properties.add(DiagnosticsProperty<double>('space96', space96));
    properties.add(DiagnosticsProperty<double>('space104', space104));
    properties.add(DiagnosticsProperty<double>('space112', space112));
    properties.add(DiagnosticsProperty<double>('space120', space120));
    properties.add(DiagnosticsProperty<double>('space128', space128));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace2', negativeSpace2));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace4', negativeSpace4));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace6', negativeSpace6));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace8', negativeSpace8));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace12', negativeSpace12));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace16', negativeSpace16));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace20', negativeSpace20));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace24', negativeSpace24));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace32', negativeSpace32));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace40', negativeSpace40));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace44', negativeSpace44));
    properties
        .add(DiagnosticsProperty<double>('negativeSpace48', negativeSpace48));
  }
}
