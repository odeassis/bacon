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
          hoverOnColor: BaconDefaultPrimitiveColors.light().alphaDark4,
          hoverOnDark: BaconDefaultPrimitiveColors.light().alphaLight8,
          disabled: BaconDefaultPrimitiveColors.light().neutral300,
          focusRingBrand: BaconDefaultPrimitiveColors.light().alphaBrand24,
          focusRingNeutral: BaconDefaultPrimitiveColors.light().alphaDark24,
          focusRingDanger: BaconDefaultPrimitiveColors.light().alphaRed24,
        );

  BaconDefaultActionColors.dark()
      : super(
          active: BaconDefaultPrimitiveColors.dark().brand700,
          hoverOnColor: BaconDefaultPrimitiveColors.dark().alphaLight4,
          hoverOnDark: BaconDefaultPrimitiveColors.dark().alphaDark8,
          disabled: BaconDefaultPrimitiveColors.dark().neutral300,
          focusRingBrand: BaconDefaultPrimitiveColors.dark().alphaBrand24,
          focusRingNeutral: BaconDefaultPrimitiveColors.dark().alphaLight24,
          focusRingDanger: BaconDefaultPrimitiveColors.dark().alphaRed24,
        );
}
