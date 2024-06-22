import 'package:bacon/src/theme/tokens/primitives/color/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/accent/accent.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/action/action.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/alert/alert.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/background.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/border.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/content.dart';

class BaconDefaultSemanticTokensModes extends BaconSemanticTokensModes {
  BaconDefaultSemanticTokensModes.colors({
    required BaconBasePrimitiveColors primitives,
  }) : super(
          action: BaconDefaultActionColors.colors(primitives: primitives),
          alert: BaconDefaultAlertColors.colors(primitives: primitives),
          background:
              BaconDefaultBackgroundColors.colors(primitives: primitives),
          content: BaconDefaultContentColors.colors(primitives: primitives),
          border: BaconDefaultBorderColors.colors(primitives: primitives),
          accent: BaconDefaultAccentColors.colors(primitives: primitives),
        );
}
