import 'package:bacon/src/theme/tokens/semantic_tokens/scale/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/component/components.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/gap/gap.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/padding/padding.dart';

class BaconDefaultSemanticTokensScale extends BaconSemanticTokensScale {
  BaconDefaultSemanticTokensScale.kDefault()
      : super(
          component: BaconDefaultComponentScale.kDefault(),
          padding: BaconDefaultPaddingScale.kDefault(),
          gap: BaconDefaultGapScale.kDefault(),
        );

  BaconDefaultSemanticTokensScale.compact()
      : super(
          component: BaconDefaultComponentScale.compact(),
          padding: BaconDefaultPaddingScale.compact(),
          gap: BaconDefaultGapScale.compact(),
        );

  BaconDefaultSemanticTokensScale.expanded()
      : super(
          component: BaconDefaultComponentScale.expanded(),
          padding: BaconDefaultPaddingScale.expanded(),
          gap: BaconDefaultGapScale.expanded(),
        );
}
