import 'package:bacon/src/theme/tokens/opacities.dart';
import 'package:bacon/src/theme/tokens/primitives/color/base.dart';
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

  BaconDefaultActionColors.colors({
    required BaconBasePrimitiveColors primitives,
  }) : super(
          active: primitives.brand600,
          hoverOnColor: BaconDefaultPrimitiveColors.dark()
              .alpha
              .withOpacity(BaconOpacities.opacities.hoverOnColor),
          hoverOnDark: primitives.alpha
              .withOpacity(BaconOpacities.opacities.hoverOnDark),
          disabled: primitives.neutral300,
          focusRingBrand: primitives.alphaBrand
              .withOpacity(BaconOpacities.opacities.focusRing),
          focusRingNeutral: BaconDefaultPrimitiveColors.dark()
              .alpha
              .withOpacity(BaconOpacities.opacities.focusRing),
          focusRingDanger: primitives.alphaRed
              .withOpacity(BaconOpacities.opacities.focusRing),
        );
}
