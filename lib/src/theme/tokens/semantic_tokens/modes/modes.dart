import 'package:bacon/src/theme/tokens/semantic_tokens/modes/accent/accent.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/action/action.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/alert/alert.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/background.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/border.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/content.dart';

class BaconDefaultSemanticTokensModes extends BaconSemanticTokensModes {
  BaconDefaultSemanticTokensModes.light()
      : super(
          action: BaconDefaultActionColors.light(),
          alert: BaconDefaultAlertColors.light(),
          background: BaconDefaultBackgroundColors.light(),
          content: BaconDefaultContentColors.light(),
          border: BaconDefaultBorderColors.light(),
          accent: BaconDefaultAccentColors.light(),
        );

  BaconDefaultSemanticTokensModes.dark()
      : super(
          action: BaconDefaultActionColors.dark(),
          alert: BaconDefaultAlertColors.dark(),
          background: BaconDefaultBackgroundColors.dark(),
          content: BaconDefaultContentColors.dark(),
          border: BaconDefaultBorderColors.dark(),
          accent: BaconDefaultAccentColors.dark(),
        );
}
