import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HivePrimitiveSizesTokens extends ThemeExtension<HivePrimitiveSizesTokens>
    with DiagnosticableTreeMixin {
  final double size0;
  final double size2;
  final double size4;
  final double size6;
  final double size8;
  final double size12;
  final double size16;
  final double size20;
  final double size24;
  final double size32;
  final double size40;
  final double size44;
  final double size48;
  final double size56;
  final double size64;
  final double size72;
  final double size80;
  final double size88;
  final double size96;
  final double size104;
  final double size112;
  final double size120;
  final double size128;

  const HivePrimitiveSizesTokens({
    required this.size0,
    required this.size2,
    required this.size4,
    required this.size6,
    required this.size8,
    required this.size12,
    required this.size16,
    required this.size20,
    required this.size24,
    required this.size32,
    required this.size40,
    required this.size44,
    required this.size48,
    required this.size56,
    required this.size64,
    required this.size72,
    required this.size80,
    required this.size88,
    required this.size96,
    required this.size104,
    required this.size112,
    required this.size120,
    required this.size128,
  });

  @override
  HivePrimitiveSizesTokens copyWith({
    double? size0,
    double? size2,
    double? size4,
    double? size6,
    double? size8,
    double? size12,
    double? size16,
    double? size20,
    double? size24,
    double? size32,
    double? size40,
    double? size44,
    double? size48,
    double? size56,
    double? size64,
    double? size72,
    double? size80,
    double? size88,
    double? size96,
    double? size104,
    double? size112,
    double? size120,
    double? size128,
  }) {
    return HivePrimitiveSizesTokens(
      size0: size0 ?? this.size0,
      size2: size2 ?? this.size2,
      size4: size4 ?? this.size4,
      size6: size6 ?? this.size6,
      size8: size8 ?? this.size8,
      size12: size12 ?? this.size12,
      size16: size16 ?? this.size16,
      size20: size20 ?? this.size20,
      size24: size24 ?? this.size24,
      size32: size32 ?? this.size32,
      size40: size40 ?? this.size40,
      size44: size44 ?? this.size44,
      size48: size48 ?? this.size48,
      size56: size56 ?? this.size56,
      size64: size64 ?? this.size64,
      size72: size72 ?? this.size72,
      size80: size80 ?? this.size80,
      size88: size88 ?? this.size88,
      size96: size96 ?? this.size96,
      size104: size104 ?? this.size104,
      size112: size112 ?? this.size112,
      size120: size120 ?? this.size120,
      size128: size128 ?? this.size128,
    );
  }

  @override
  HivePrimitiveSizesTokens lerp(
      ThemeExtension<HivePrimitiveSizesTokens>? other, double t) {
    if (other is! HivePrimitiveSizesTokens) return this;

    return HivePrimitiveSizesTokens(
      size0: lerpDouble(size0, other.size0, t)!,
      size2: lerpDouble(size2, other.size2, t)!,
      size4: lerpDouble(size4, other.size4, t)!,
      size6: lerpDouble(size6, other.size6, t)!,
      size8: lerpDouble(size8, other.size8, t)!,
      size12: lerpDouble(size12, other.size12, t)!,
      size16: lerpDouble(size16, other.size16, t)!,
      size20: lerpDouble(size20, other.size20, t)!,
      size24: lerpDouble(size24, other.size24, t)!,
      size32: lerpDouble(size32, other.size32, t)!,
      size40: lerpDouble(size40, other.size40, t)!,
      size44: lerpDouble(size44, other.size44, t)!,
      size48: lerpDouble(size48, other.size48, t)!,
      size56: lerpDouble(size56, other.size56, t)!,
      size64: lerpDouble(size64, other.size64, t)!,
      size72: lerpDouble(size72, other.size72, t)!,
      size80: lerpDouble(size80, other.size80, t)!,
      size88: lerpDouble(size88, other.size88, t)!,
      size96: lerpDouble(size96, other.size96, t)!,
      size104: lerpDouble(size104, other.size104, t)!,
      size112: lerpDouble(size112, other.size112, t)!,
      size120: lerpDouble(size120, other.size120, t)!,
      size128: lerpDouble(size128, other.size128, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', "HivePrimitiveSizesTokens"));
    properties.add(DiagnosticsProperty<double>('size0', size0));
    properties.add(DiagnosticsProperty<double>('size2', size2));
    properties.add(DiagnosticsProperty<double>('size4', size4));
    properties.add(DiagnosticsProperty<double>('size6', size6));
    properties.add(DiagnosticsProperty<double>('size8', size8));
    properties.add(DiagnosticsProperty<double>('size12', size12));
    properties.add(DiagnosticsProperty<double>('size16', size16));
    properties.add(DiagnosticsProperty<double>('size20', size20));
    properties.add(DiagnosticsProperty<double>('size24', size24));
    properties.add(DiagnosticsProperty<double>('size32', size32));
    properties.add(DiagnosticsProperty<double>('size40', size40));
    properties.add(DiagnosticsProperty<double>('size44', size44));
    properties.add(DiagnosticsProperty<double>('size48', size48));
    properties.add(DiagnosticsProperty<double>('size56', size56));
    properties.add(DiagnosticsProperty<double>('size64', size64));
    properties.add(DiagnosticsProperty<double>('size72', size72));
    properties.add(DiagnosticsProperty<double>('size80', size80));
    properties.add(DiagnosticsProperty<double>('size88', size88));
    properties.add(DiagnosticsProperty<double>('size96', size96));
    properties.add(DiagnosticsProperty<double>('size104', size104));
    properties.add(DiagnosticsProperty<double>('size112', size112));
    properties.add(DiagnosticsProperty<double>('size120', size120));
    properties.add(DiagnosticsProperty<double>('size128', size128));
  }
}
