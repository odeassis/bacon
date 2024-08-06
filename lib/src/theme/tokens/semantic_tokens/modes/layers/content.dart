import '../../../primitives/primitives.dart';
import 'layers_tokens.dart';

class HiveContentColors extends HiveLayersColorsTokens {
  HiveContentColors({
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

  HiveContentColors.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          brand: primitives.brand700,
          brandLight: primitives.brand300,
          primary: primitives.neutral1100,
          secondary: primitives.neutral800,
          tertiary: primitives.neutral500,
          inverse: primitives.neutral0,
          alwaysDark: primitives.neutral0,
          alwaysWhite: primitives.neutral1100,
        );
}
