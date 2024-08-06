import '../../../primitives/primitives.dart';
import 'layers_tokens.dart';

class HiveBorderColors extends HiveLayersColorsTokens {
  const HiveBorderColors({
    required super.brand,
    required super.brandLight,
    required super.primary,
    required super.secondary,
    required super.tertiary,
    required super.inverse,
    required super.alwaysWhite,
    required super.alwaysDark,
  });

  HiveBorderColors.colors({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          brand: primitives.brand600,
          brandLight: primitives.brand200,
          primary: primitives.neutral400,
          secondary: primitives.neutral300,
          tertiary: primitives.neutral600,
          inverse: primitives.neutral800,
          alwaysDark: primitives.neutral1100,
          alwaysWhite: primitives.neutral0,
        );
}
