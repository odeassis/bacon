import 'package:bacon/src/theme/tokens/primitives/color/colors.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/accent/base.dart';

class BaconDefaultAccentColors extends BaconBaseAccentSemanticTokensColors {
  BaconDefaultAccentColors.light()
      : super(
          purple: BaconDefaultPrimitiveColors.light().purple600,
          purpleLight: BaconDefaultPrimitiveColors.light().purple200,
          pink: BaconDefaultPrimitiveColors.light().pink600,
          pinkLight: BaconDefaultPrimitiveColors.light().pink200,
          red: BaconDefaultPrimitiveColors.light().red600,
          redLight: BaconDefaultPrimitiveColors.light().red200,
          orange: BaconDefaultPrimitiveColors.light().orange600,
          orangeLight: BaconDefaultPrimitiveColors.light().orange200,
          yellow: BaconDefaultPrimitiveColors.light().yellow600,
          yellowLight: BaconDefaultPrimitiveColors.light().yellow200,
          green: BaconDefaultPrimitiveColors.light().green600,
          greenLight: BaconDefaultPrimitiveColors.light().green200,
          blue: BaconDefaultPrimitiveColors.light().blue600,
          blueLight: BaconDefaultPrimitiveColors.light().blue200,
        );

  BaconDefaultAccentColors.dark()
      : super(
          purple: BaconDefaultPrimitiveColors.dark().purple700,
          purpleLight: BaconDefaultPrimitiveColors.dark().purple300,
          pink: BaconDefaultPrimitiveColors.dark().pink700,
          pinkLight: BaconDefaultPrimitiveColors.dark().pink300,
          red: BaconDefaultPrimitiveColors.dark().red700,
          redLight: BaconDefaultPrimitiveColors.dark().red300,
          orange: BaconDefaultPrimitiveColors.dark().orange700,
          orangeLight: BaconDefaultPrimitiveColors.dark().orange300,
          yellow: BaconDefaultPrimitiveColors.dark().yellow700,
          yellowLight: BaconDefaultPrimitiveColors.dark().yellow300,
          green: BaconDefaultPrimitiveColors.dark().green700,
          greenLight: BaconDefaultPrimitiveColors.dark().green300,
          blue: BaconDefaultPrimitiveColors.dark().blue700,
          blueLight: BaconDefaultPrimitiveColors.dark().blue300,
        );
}
