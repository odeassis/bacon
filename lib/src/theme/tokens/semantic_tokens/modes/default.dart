import '../../primitives/primitives.dart';
import 'accent/default.dart';
import 'action/default.dart';
import 'alert/default.dart';
import 'layers/background.dart';
import 'layers/border.dart';
import 'layers/content.dart';
import 'modes_tokens.dart';

class HiveMode extends HiveModeTokens {
  HiveMode.colors({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          action: HiveActionColors.colors(primitives: primitives),
          alert: HiveAlertColors.colors(primitives: primitives),
          background: HiveBackground.colors(primitives: primitives),
          content: HiveContentColors.colors(primitives: primitives),
          border: HiveBorderColors.colors(primitives: primitives),
          accent: HiveAccentColors.colors(primitives: primitives),
        );
}
