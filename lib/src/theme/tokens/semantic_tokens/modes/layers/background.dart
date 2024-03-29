import 'package:bacon/src/theme/tokens/primitives/color/colors.dart';
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

  BaconDefaultBackgroundColors.light()
      : super(
          brand: BaconDefaultPrimitiveColors.light().brand600,
          brandLight: BaconDefaultPrimitiveColors.light().brand200,
          primary: BaconDefaultPrimitiveColors.light().neutral0,
          secondary: BaconDefaultPrimitiveColors.light().neutral200,
          tertiary: BaconDefaultPrimitiveColors.light().neutral300,
          inverse: BaconDefaultPrimitiveColors.light().neutral1100,
          alwaysDark: BaconDefaultPrimitiveColors.light().neutral1100,
          alwaysWhite: BaconDefaultPrimitiveColors.light().neutral0,
        );

  BaconDefaultBackgroundColors.dark()
      : super(
          brand: BaconDefaultPrimitiveColors.dark().brand700,
          brandLight: BaconDefaultPrimitiveColors.dark().brand300,
          primary: BaconDefaultPrimitiveColors.dark().neutral200,
          secondary: BaconDefaultPrimitiveColors.dark().neutral0,
          tertiary: BaconDefaultPrimitiveColors.dark().neutral300,
          inverse: BaconDefaultPrimitiveColors.dark().neutral1100,
          alwaysDark: BaconDefaultPrimitiveColors.dark().neutral0,
          alwaysWhite: BaconDefaultPrimitiveColors.dark().neutral1100,
        );
}
