import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseLayersSemanticTokensColors
    extends ThemeExtension<BaconBaseLayersSemanticTokensColors>
    with DiagnosticableTreeMixin {
  final Color brand;
  final Color brandLight;
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color inverse;
  final Color alwaysWhite;
  final Color alwaysDark;

  const BaconBaseLayersSemanticTokensColors({
    required this.brand,
    required this.brandLight,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.inverse,
    required this.alwaysWhite,
    required this.alwaysDark,
  });

  @override
  BaconBaseLayersSemanticTokensColors lerp(
    ThemeExtension<BaconBaseLayersSemanticTokensColors>? other,
    double t,
  ) {
    if (other is! BaconBaseLayersSemanticTokensColors) return this;
    return BaconBaseLayersSemanticTokensColors(
      brand: Color.lerp(brand, other.brand, t)!,
      brandLight: Color.lerp(brandLight, other.brandLight, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      inverse: Color.lerp(inverse, other.inverse, t)!,
      alwaysWhite: Color.lerp(alwaysWhite, other.alwaysWhite, t)!,
      alwaysDark: Color.lerp(alwaysDark, other.alwaysDark, t)!,
    );
  }

  @override
  ThemeExtension<BaconBaseLayersSemanticTokensColors> copyWith({
    Color? brand,
    Color? brandLight,
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? inverse,
    Color? alwaysWhite,
    Color? alwaysDark,
  }) {
    return BaconBaseLayersSemanticTokensColors(
      brand: brand ?? this.brand,
      brandLight: brandLight ?? this.brandLight,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      inverse: inverse ?? this.inverse,
      alwaysWhite: alwaysWhite ?? this.alwaysWhite,
      alwaysDark: alwaysDark ?? this.alwaysDark,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty("type", "BaconBaseLayersSemanticTokensColors"));
    properties.add(ColorProperty('brand', brand));
    properties.add(ColorProperty('brandLight', brandLight));
    properties.add(ColorProperty('primary', primary));
    properties.add(ColorProperty('secondary', secondary));
    properties.add(ColorProperty('tertiary', tertiary));
    properties.add(ColorProperty('inverse', inverse));
    properties.add(ColorProperty('alwaysWhite', alwaysWhite));
    properties.add(ColorProperty('alwaysDark', alwaysDark));
  }
}
