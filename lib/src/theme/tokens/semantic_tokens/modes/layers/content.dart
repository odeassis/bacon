import 'package:bacon/src/theme/tokens/primitives/color/colors.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/base.dart';

class BaconDefaultContentColors extends BaconBaseLayersSemanticTokensColors {
  const BaconDefaultContentColors({
    required super.brand,
    required super.brandLight,
    required super.primary,
    required super.secondary,
    required super.tertiary,
    required super.inverse,
    required super.alwaysWhite,
    required super.alwaysDark,
  });

  BaconDefaultContentColors.light()
      : super(
          brand: BaconDefaultPrimitiveColors.light().brand600,
          brandLight: BaconDefaultPrimitiveColors.light().brand200,
          primary: BaconDefaultPrimitiveColors.light().neutral1100,
          secondary: BaconDefaultPrimitiveColors.light().neutral800,
          tertiary: BaconDefaultPrimitiveColors.light().neutral500,
          inverse: BaconDefaultPrimitiveColors.light().neutral0,
          alwaysDark: BaconDefaultPrimitiveColors.light().neutral1100,
          alwaysWhite: BaconDefaultPrimitiveColors.light().neutral0,
        );

  BaconDefaultContentColors.dark()
      : super(
          brand: BaconDefaultPrimitiveColors.dark().brand700,
          brandLight: BaconDefaultPrimitiveColors.dark().brand300,
          primary: BaconDefaultPrimitiveColors.dark().neutral1100,
          secondary: BaconDefaultPrimitiveColors.dark().neutral800,
          tertiary: BaconDefaultPrimitiveColors.dark().neutral500,
          inverse: BaconDefaultPrimitiveColors.dark().neutral0,
          alwaysDark: BaconDefaultPrimitiveColors.dark().neutral0,
          alwaysWhite: BaconDefaultPrimitiveColors.dark().neutral1100,
        );
}
