import 'package:bacon/src/theme/tokens/primitives/color/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/accent/base.dart';

class BaconDefaultAccentColors extends BaconBaseAccentSemanticTokensColors {
  BaconDefaultAccentColors.colors({
    required BaconBasePrimitiveColors primitives,
  }) : super(
          purple: primitives.purple600,
          purpleLight: primitives.purple200,
          pink: primitives.pink600,
          pinkLight: primitives.pink200,
          red: primitives.red600,
          redLight: primitives.red200,
          orange: primitives.orange600,
          orangeLight: primitives.orange200,
          yellow: primitives.yellow600,
          yellowLight: primitives.yellow200,
          green: primitives.green600,
          greenLight: primitives.green200,
          blue: primitives.blue600,
          blueLight: primitives.blue200,
        );
}
