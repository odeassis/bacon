import 'package:bacon/src/theme/tokens/primitives/color/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/alert/base.dart';

class BaconDefaultAlertColors extends BaconBaseAlertSemanticTokensColors {
  BaconDefaultAlertColors.colors({
    required BaconBasePrimitiveColors primitives,
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
