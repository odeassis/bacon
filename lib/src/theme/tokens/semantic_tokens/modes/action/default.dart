import '../../../primitives/primitives.dart';
import 'action_tokens.dart';

class HiveActionColors extends HiveActionColorsTokens {
  const HiveActionColors({
    required super.active,
    required super.hoverOnColor,
    required super.hoverOnDark,
    required super.disabled,
    required super.focusRingBrand,
    required super.focusRingNeutral,
    required super.focusRingDanger,
  });

  HiveActionColors.colors({
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
          focusRingDanger: primitives.alphaRed
              .withOpacity(HiveOpacities.opacities.focusRing),
        );
}
