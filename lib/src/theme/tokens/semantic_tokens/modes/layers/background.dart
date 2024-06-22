import 'package:bacon/src/theme/tokens/primitives/color/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/base.dart';

class BaconDefaultBackgroundColors extends BaconBaseLayersSemanticTokensColors {
  const BaconDefaultBackgroundColors({
    required super.brand,
    required super.brandLight,
    required super.primary,
    required super.secondary,
    required super.tertiary,
    required super.inverse,
    required super.alwaysWhite,
    required super.alwaysDark,
  });

  BaconDefaultBackgroundColors.colors({
    required BaconBasePrimitiveColors primitives,
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
