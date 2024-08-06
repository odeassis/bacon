import '../../../primitives/primitives.dart';
import 'layers_tokens.dart';

class HiveBackground extends HiveLayersColorsTokens {
  const HiveBackground({
    required super.brand,
    required super.brandLight,
    required super.primary,
    required super.secondary,
    required super.tertiary,
    required super.inverse,
    required super.alwaysWhite,
    required super.alwaysDark,
  });

  HiveBackground.colors({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          brand: primitives.brand600,
          brandLight: primitives.brand200,
          primary: primitives.neutral0,
          secondary: primitives.neutral200,
          tertiary: primitives.neutral300,
          inverse: primitives.neutral1100,
          alwaysDark: primitives.neutral1100,
          alwaysWhite: primitives.neutral0,
        );
}
