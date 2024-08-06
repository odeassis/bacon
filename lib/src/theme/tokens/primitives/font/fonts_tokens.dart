import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HivePrimitiveFontsSizesTokens
    extends ThemeExtension<HivePrimitiveFontsSizesTokens>
    with DiagnosticableTreeMixin {
  final double fontSize12;
  final double fontSize14;
  final double fontSize16;
  final double fontSize18;
  final double fontSize20;
  final double fontSize24;
  final double fontSize28;
  final double fontSize32;
  final double fontSize36;
  final double fontSize40;
  final double fontSize44;
  final double fontSize48;
  final double fontSize52;
  final double fontSize96;
  final double fontSize112;
  final double height120;
  final double height140;
  final double height170;
  final double letterSpacingSpaced;
  final double letterSpacingDefault;
  final double letterSpacingTight;
  final FontWeight fontWeightLight;
  final FontWeight fontWeightRegular;
  final FontWeight fontWeightMedium;
  final FontWeight fontWeightBold;
  final FontWeight fontWeightBlack;

  const HivePrimitiveFontsSizesTokens({
    required this.fontSize12,
    required this.fontSize14,
    required this.fontSize16,
    required this.fontSize18,
    required this.fontSize20,
    required this.fontSize24,
    required this.fontSize28,
    required this.fontSize32,
    required this.fontSize36,
    required this.fontSize40,
    required this.fontSize44,
    required this.fontSize48,
    required this.fontSize52,
    required this.fontSize96,
    required this.fontSize112,
    required this.letterSpacingDefault,
    required this.letterSpacingSpaced,
    required this.letterSpacingTight,
    required this.height120,
    required this.height140,
    required this.height170,
    required this.fontWeightLight,
    required this.fontWeightRegular,
    required this.fontWeightMedium,
    required this.fontWeightBold,
    required this.fontWeightBlack,
  });

  @override
  HivePrimitiveFontsSizesTokens copyWith({
    double? fontSize12,
    double? fontSize14,
    double? fontSize16,
    double? fontSize18,
    double? fontSize20,
    double? fontSize24,
    double? fontSize28,
    double? fontSize32,
    double? fontSize36,
    double? fontSize40,
    double? fontSize44,
    double? fontSize48,
    double? fontSize52,
    double? fontSize96,
    double? fontSize112,
    double? letterSpacingDefault,
    double? letterSpacingSpaced,
    double? letterSpacingTight,
    double? height120,
    double? height140,
    double? height170,
    FontWeight? fontWeightLight,
    FontWeight? fontWeightRegular,
    FontWeight? fontWeightMedium,
    FontWeight? fontWeightBold,
    FontWeight? fontWeightBlack,
  }) {
    return HivePrimitiveFontsSizesTokens(
      fontSize12: fontSize12 ?? this.fontSize12,
      fontSize14: fontSize14 ?? this.fontSize14,
      fontSize16: fontSize16 ?? this.fontSize16,
      fontSize18: fontSize18 ?? this.fontSize18,
      fontSize20: fontSize20 ?? this.fontSize20,
      fontSize24: fontSize24 ?? this.fontSize24,
      fontSize28: fontSize28 ?? this.fontSize28,
      fontSize32: fontSize32 ?? this.fontSize32,
      fontSize36: fontSize36 ?? this.fontSize36,
      fontSize40: fontSize40 ?? this.fontSize40,
      fontSize44: fontSize44 ?? this.fontSize44,
      fontSize48: fontSize48 ?? this.fontSize48,
      fontSize52: fontSize52 ?? this.fontSize52,
      fontSize96: fontSize96 ?? this.fontSize96,
      fontSize112: fontSize112 ?? this.fontSize112,
      letterSpacingDefault: letterSpacingDefault ?? this.letterSpacingDefault,
      letterSpacingSpaced: letterSpacingSpaced ?? this.letterSpacingSpaced,
      letterSpacingTight: letterSpacingTight ?? this.letterSpacingTight,
      height120: height120 ?? this.height120,
      height140: height140 ?? this.height140,
      height170: height170 ?? this.height170,
      fontWeightLight: fontWeightLight ?? this.fontWeightLight,
      fontWeightRegular: fontWeightRegular ?? this.fontWeightRegular,
      fontWeightMedium: fontWeightMedium ?? this.fontWeightMedium,
      fontWeightBold: fontWeightBold ?? this.fontWeightBold,
      fontWeightBlack: fontWeightBlack ?? this.fontWeightBlack,
    );
  }

  @override
  HivePrimitiveFontsSizesTokens lerp(
      covariant ThemeExtension<HivePrimitiveFontsSizesTokens>? other,
      double t) {
    if (other is! HivePrimitiveFontsSizesTokens) return this;

    return HivePrimitiveFontsSizesTokens(
      fontSize12: lerpDouble(fontSize12, other.fontSize12, t)!,
      fontSize14: lerpDouble(fontSize14, other.fontSize14, t)!,
      fontSize16: lerpDouble(fontSize16, other.fontSize16, t)!,
      fontSize18: lerpDouble(fontSize18, other.fontSize18, t)!,
      fontSize20: lerpDouble(fontSize20, other.fontSize20, t)!,
      fontSize24: lerpDouble(fontSize24, other.fontSize24, t)!,
      fontSize28: lerpDouble(fontSize28, other.fontSize28, t)!,
      fontSize32: lerpDouble(fontSize32, other.fontSize32, t)!,
      fontSize36: lerpDouble(fontSize36, other.fontSize36, t)!,
      fontSize40: lerpDouble(fontSize40, other.fontSize40, t)!,
      fontSize44: lerpDouble(fontSize44, other.fontSize44, t)!,
      fontSize48: lerpDouble(fontSize48, other.fontSize48, t)!,
      fontSize52: lerpDouble(fontSize52, other.fontSize52, t)!,
      fontSize96: lerpDouble(fontSize96, other.fontSize96, t)!,
      fontSize112: lerpDouble(fontSize112, other.fontSize112, t)!,
      letterSpacingDefault:
          lerpDouble(letterSpacingDefault, other.letterSpacingDefault, t)!,
      letterSpacingSpaced:
          lerpDouble(letterSpacingSpaced, other.letterSpacingSpaced, t)!,
      letterSpacingTight:
          lerpDouble(letterSpacingTight, other.letterSpacingTight, t)!,
      height120: lerpDouble(height120, other.height120, t)!,
      height140: lerpDouble(height140, other.height140, t)!,
      height170: lerpDouble(height170, other.height170, t)!,
      fontWeightLight:
          FontWeight.lerp(fontWeightLight, other.fontWeightLight, t)!,
      fontWeightRegular:
          FontWeight.lerp(fontWeightRegular, other.fontWeightRegular, t)!,
      fontWeightMedium:
          FontWeight.lerp(fontWeightMedium, other.fontWeightMedium, t)!,
      fontWeightBold: FontWeight.lerp(fontWeightBold, other.fontWeightBold, t)!,
      fontWeightBlack:
          FontWeight.lerp(fontWeightBlack, other.fontWeightBlack, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty("type", "HivePrimitiveFontsSizesTokens"));
    properties.add(DiagnosticsProperty("fontSize12", fontSize12));
    properties.add(DiagnosticsProperty("fontSize14", fontSize14));
    properties.add(DiagnosticsProperty("fontSize16", fontSize16));
    properties.add(DiagnosticsProperty("fontSize18", fontSize18));
    properties.add(DiagnosticsProperty("fontSize20", fontSize20));
    properties.add(DiagnosticsProperty("fontSize24", fontSize24));
    properties.add(DiagnosticsProperty("fontSize28", fontSize28));
    properties.add(DiagnosticsProperty("fontSize32", fontSize32));
    properties.add(DiagnosticsProperty("fontSize36", fontSize36));
    properties.add(DiagnosticsProperty("fontSize40", fontSize40));
    properties.add(DiagnosticsProperty("fontSize44", fontSize44));
    properties.add(DiagnosticsProperty("fontSize48", fontSize48));
    properties.add(DiagnosticsProperty("fontSize52", fontSize52));
    properties.add(DiagnosticsProperty("fontSize96", fontSize96));
    properties.add(DiagnosticsProperty("fontSize112", fontSize112));
    properties
        .add(DiagnosticsProperty("letterSpacingDefault", letterSpacingDefault));
    properties
        .add(DiagnosticsProperty("letterSpacingSpaced", letterSpacingSpaced));
    properties
        .add(DiagnosticsProperty("letterSpacingTight", letterSpacingTight));
    properties.add(DiagnosticsProperty("height120", height120));
    properties.add(DiagnosticsProperty("height140", height140));
    properties.add(DiagnosticsProperty("height170", height170));
    properties.add(DiagnosticsProperty("fontWeightLight", fontWeightLight));
    properties.add(DiagnosticsProperty("fontWeightRegular", fontWeightRegular));
    properties.add(DiagnosticsProperty("fontWeightMedium", fontWeightMedium));
    properties.add(DiagnosticsProperty("fontWeightBold", fontWeightBold));
    properties.add(DiagnosticsProperty("fontWeightBlack", fontWeightBlack));
  }
}
