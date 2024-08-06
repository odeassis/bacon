import '../../primitives/primitives.dart';
import 'accent/default.dart';
import 'action/default.dart';
import 'alert/default.dart';
import 'layers/background.dart';
import 'layers/border.dart';
import 'layers/content.dart';
import 'modes_tokens.dart';

class HiveMode extends HiveModeTokens {
  HiveMode({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          accent: HiveAccentColors(primitives: primitives),
          alert: HiveAlertColors(primitives: primitives),
          action: HiveActionColors(primitives: primitives),
          background: HiveBackground(primitives: primitives),
          border: HiveBorderColors(primitives: primitives),
          content: HiveContentColors(primitives: primitives),
        );

  HiveMode.dark({
    required HivePrimitiveColorsTokens primitives,
  }) : super(
          accent: HiveAccentColors.dark(primitives: primitives),
          alert: HiveAlertColors.dark(primitives: primitives),
          action: HiveActionColors.dark(primitives: primitives),
          background: HiveBackground.dark(primitives: primitives),
          border: HiveBorderColors.dark(primitives: primitives),
          content: HiveContentColors.dark(primitives: primitives),
        );
}
