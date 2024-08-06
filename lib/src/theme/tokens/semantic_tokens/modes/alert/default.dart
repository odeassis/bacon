import '../../../primitives/primitives.dart';
import 'alert_tokens.dart';

class HiveAlertColors extends HiveAlertColorsTokens {
  HiveAlertColors({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          danger: primitives.red600,
          dangerLight: primitives.red200,
          warning: primitives.yellow600,
          warningLight: primitives.yellow200,
          success: primitives.green600,
          successLight: primitives.green200,
          info: primitives.blue600,
          infoLight: primitives.blue200,
        );

  HiveAlertColors.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          danger: primitives.red700,
          dangerLight: primitives.red300,
          warning: primitives.yellow700,
          warningLight: primitives.yellow300,
          success: primitives.green700,
          successLight: primitives.green300,
          info: primitives.blue700,
          infoLight: primitives.blue300,
        );
}
