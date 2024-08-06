import '../../../primitives/primitives.dart';
import 'layers_tokens.dart';

class HiveContentColors extends HiveLayersColorsTokens {
  const HiveContentColors({
    required super.brand,
    required super.brandLight,
    required super.primary,
    required super.secondary,
    required super.tertiary,
    required super.inverse,
    required super.alwaysWhite,
    required super.alwaysDark,
  });

  HiveContentColors.colors({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          brand: primitives.brand600,
          brandLight: primitives.brand200,
          primary: primitives.neutral1100,
          secondary: primitives.neutral800,
          tertiary: primitives.neutral500,
          inverse: primitives.neutral0,
          alwaysDark: primitives.neutral1100,
          alwaysWhite: primitives.neutral0,
        );
}
