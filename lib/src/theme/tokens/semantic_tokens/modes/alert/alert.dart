import 'package:bacon/src/theme/tokens/primitives/color/colors.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/alert/base.dart';

class BaconDefaultAlertColors extends BaconBaseAlertSemanticTokensColors {
  BaconDefaultAlertColors.light()
      : super(
          danger: BaconDefaultPrimitiveColors.light().red600,
          dangerLight: BaconDefaultPrimitiveColors.light().red200,
          warning: BaconDefaultPrimitiveColors.light().yellow600,
          warningLight: BaconDefaultPrimitiveColors.light().yellow200,
          success: BaconDefaultPrimitiveColors.light().green600,
          successLight: BaconDefaultPrimitiveColors.light().green200,
          info: BaconDefaultPrimitiveColors.light().blue600,
          infoLight: BaconDefaultPrimitiveColors.light().blue200,
        );

  BaconDefaultAlertColors.dark()
      : super(
          danger: BaconDefaultPrimitiveColors.dark().red700,
          dangerLight: BaconDefaultPrimitiveColors.dark().red300,
          warning: BaconDefaultPrimitiveColors.dark().yellow700,
          warningLight: BaconDefaultPrimitiveColors.dark().yellow300,
          success: BaconDefaultPrimitiveColors.dark().green700,
          successLight: BaconDefaultPrimitiveColors.dark().green300,
          info: BaconDefaultPrimitiveColors.dark().blue700,
          infoLight: BaconDefaultPrimitiveColors.dark().blue300,
        );
}
