import 'package:bacon/src/theme/tokens/primitives/color/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/base.dart';

class BaconDefaultBorderColors extends BaconBaseLayersSemanticTokensColors {
  const BaconDefaultBorderColors({
    required super.brand,
    required super.brandLight,
    required super.primary,
    required super.secondary,
    required super.tertiary,
    required super.inverse,
    required super.alwaysWhite,
    required super.alwaysDark,
  });

  BaconDefaultBorderColors.colors({
    required BaconBasePrimitiveColors primitives,
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
