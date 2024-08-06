import '../../../primitives/primitives.dart';
import 'alert_tokens.dart';

class HiveAlertColors extends HiveAlertColorsTokens {
  HiveAlertColors.colors({
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
}
