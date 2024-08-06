import '../../../primitives/primitives.dart';
import 'layers_tokens.dart';

class HiveBorderColors extends HiveLayersColorsTokens {
  HiveBorderColors({
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

  HiveBorderColors.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          brand: primitives.brand700,
          brandLight: primitives.brand300,
          primary: primitives.neutral400,
          secondary: primitives.neutral300,
          tertiary: primitives.neutral500,
          inverse: primitives.neutral800,
          alwaysDark: primitives.neutral0,
          alwaysWhite: primitives.neutral1100,
        );
}
