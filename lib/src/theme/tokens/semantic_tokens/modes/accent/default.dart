import '../../../primitives/primitives.dart';
import 'accent_tokens.dart';

class HiveAccentColors extends HiveAccentColorsTokens {
  HiveAccentColors({
    required HivePrimitiveColorsTokens primitives,
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

  HiveAccentColors.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          purple: primitives.purple700,
          purpleLight: primitives.purple300,
          pink: primitives.pink700,
          pinkLight: primitives.pink300,
          red: primitives.red700,
          redLight: primitives.red300,
          orange: primitives.orange700,
          orangeLight: primitives.orange300,
          yellow: primitives.yellow700,
          yellowLight: primitives.yellow300,
          green: primitives.green700,
          greenLight: primitives.green300,
          blue: primitives.blue700,
          blueLight: primitives.blue300,
        );
}
