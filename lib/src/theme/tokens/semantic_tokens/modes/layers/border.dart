import 'package:bacon/src/theme/tokens/primitives/color/colors.dart';
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

  BaconDefaultBorderColors.light()
      : super(
          brand: BaconDefaultPrimitiveColors.light().brand600,
          brandLight: BaconDefaultPrimitiveColors.light().brand200,
          primary: BaconDefaultPrimitiveColors.light().neutral400,
          secondary: BaconDefaultPrimitiveColors.light().neutral300,
          tertiary: BaconDefaultPrimitiveColors.light().neutral600,
          inverse: BaconDefaultPrimitiveColors.light().neutral800,
          alwaysDark: BaconDefaultPrimitiveColors.light().neutral1100,
          alwaysWhite: BaconDefaultPrimitiveColors.light().neutral0,
        );

  BaconDefaultBorderColors.dark()
      : super(
          brand: BaconDefaultPrimitiveColors.dark().brand700,
          brandLight: BaconDefaultPrimitiveColors.dark().brand300,
          primary: BaconDefaultPrimitiveColors.dark().neutral400,
          secondary: BaconDefaultPrimitiveColors.dark().neutral300,
          tertiary: BaconDefaultPrimitiveColors.dark().neutral700,
          inverse: BaconDefaultPrimitiveColors.dark().neutral800,
          alwaysDark: BaconDefaultPrimitiveColors.dark().neutral0,
          alwaysWhite: BaconDefaultPrimitiveColors.dark().neutral1100,
        );
}
