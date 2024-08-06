import '../../../primitives/primitives.dart';
import 'layers_tokens.dart';

class HiveBackground extends HiveLayersColorsTokens {
  HiveBackground({
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

  HiveBackground.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          brand: primitives.brand700,
          brandLight: primitives.brand300,
          primary: primitives.neutral200,
          secondary: primitives.neutral0,
          tertiary: primitives.neutral300,
          inverse: primitives.neutral1100,
          alwaysDark: primitives.neutral0,
          alwaysWhite: primitives.neutral1100,
        );
}
