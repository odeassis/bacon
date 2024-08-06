import '../../../primitives/primitives.dart';
import 'action_tokens.dart';

class HiveActionColors extends HiveActionColorsTokens {
  HiveActionColors({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          active: primitives.brand600,
          hoverOnColor: HiveColors.dark()
              .alpha
              .withOpacity(HiveOpacities.opacities.hoverOnColor),
          hoverOnDark:
              primitives.alpha.withOpacity(HiveOpacities.opacities.hoverOnDark),
          disabled: primitives.neutral300,
          focusRingBrand: primitives.alphaBrand
              .withOpacity(HiveOpacities.opacities.focusRing),
          focusRingNeutral: HiveColors.dark()
              .alpha
              .withOpacity(HiveOpacities.opacities.focusRing),
          focusRingError: primitives.alphaRed
              .withOpacity(HiveOpacities.opacities.focusRing),
        );

  HiveActionColors.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          active: primitives.brand700,
          hoverOnColor: HiveColors.dark()
              .alpha
              .withOpacity(HiveOpacities.opacities.hoverOnColor),
          hoverOnDark:
              primitives.alpha.withOpacity(HiveOpacities.opacities.hoverOnDark),
          disabled: primitives.neutral300,
          focusRingBrand: primitives.alphaBrand
              .withOpacity(HiveOpacities.opacities.focusRing),
          focusRingNeutral: HiveColors.dark()
              .alpha
              .withOpacity(HiveOpacities.opacities.focusRing),
          focusRingError: primitives.alphaRed
              .withOpacity(HiveOpacities.opacities.focusRing),
        );
}
