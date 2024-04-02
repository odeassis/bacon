import 'package:bacon/src/theme/tokens/opacities.dart';
import 'package:bacon/src/theme/tokens/primitives/color/colors.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/action/base.dart';

class BaconDefaultActionColors extends BaconBaseActionSemanticTokensColors {
  const BaconDefaultActionColors({
    required super.active,
    required super.hoverOnColor,
    required super.hoverOnDark,
    required super.disabled,
    required super.focusRingBrand,
    required super.focusRingNeutral,
    required super.focusRingDanger,
  });

  BaconDefaultActionColors.light()
      : super(
          active: BaconDefaultPrimitiveColors.light().brand600,
          hoverOnColor: BaconDefaultPrimitiveColors.dark()
              .alpha
              .withOpacity(BaconOpacities.opacities.hoverOnColor),
          hoverOnDark: BaconDefaultPrimitiveColors.light()
              .alpha
              .withOpacity(BaconOpacities.opacities.hoverOnDark),
          disabled: BaconDefaultPrimitiveColors.light().neutral300,
          focusRingBrand: BaconDefaultPrimitiveColors.light()
              .alphaBrand
              .withOpacity(BaconOpacities.opacities.focusRing),
          focusRingNeutral: BaconDefaultPrimitiveColors.dark()
              .alpha
              .withOpacity(BaconOpacities.opacities.focusRing),
          focusRingDanger: BaconDefaultPrimitiveColors.light()
              .alphaRed
              .withOpacity(BaconOpacities.opacities.focusRing),
        );

  BaconDefaultActionColors.dark()
      : super(
          active: BaconDefaultPrimitiveColors.dark().brand700,
          hoverOnColor: BaconDefaultPrimitiveColors.light()
              .alpha
              .withOpacity(BaconOpacities.opacities.hoverOnColor),
          hoverOnDark: BaconDefaultPrimitiveColors.dark()
              .alpha
              .withOpacity(BaconOpacities.opacities.hoverOnDark),
          disabled: BaconDefaultPrimitiveColors.dark().neutral300,
          focusRingBrand: BaconDefaultPrimitiveColors.dark()
              .alphaBrand
              .withOpacity(BaconOpacities.opacities.focusRing),
          focusRingNeutral: BaconDefaultPrimitiveColors.light()
              .alpha
              .withOpacity(BaconOpacities.opacities.focusRing),
          focusRingDanger: BaconDefaultPrimitiveColors.dark()
              .alphaRed
              .withOpacity(BaconOpacities.opacities.focusRing),
        );
}
