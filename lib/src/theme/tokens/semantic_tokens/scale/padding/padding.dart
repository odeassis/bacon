import 'package:bacon/src/theme/tokens/primitives/space/spaces.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/padding/base.dart';
import 'package:flutter/foundation.dart';

@immutable
class BaconDefaultPaddingScale extends BaconBasePaddingSemanticTokensScale {
  BaconDefaultPaddingScale.kDefault()
      : super(
          x3s: const BaconDefaultPrimitiveSpaces().space2,
          x2s: const BaconDefaultPrimitiveSpaces().space4,
          xs: const BaconDefaultPrimitiveSpaces().space8,
          sm: const BaconDefaultPrimitiveSpaces().space12,
          md: const BaconDefaultPrimitiveSpaces().space16,
          lg: const BaconDefaultPrimitiveSpaces().space20,
          xl: const BaconDefaultPrimitiveSpaces().space24,
          x2l: const BaconDefaultPrimitiveSpaces().space32,
          x3l: const BaconDefaultPrimitiveSpaces().space40,
        );

  BaconDefaultPaddingScale.compact()
      : super(
          x3s: const BaconDefaultPrimitiveSpaces().space0,
          x2s: const BaconDefaultPrimitiveSpaces().space2,
          xs: const BaconDefaultPrimitiveSpaces().space4,
          sm: const BaconDefaultPrimitiveSpaces().space8,
          md: const BaconDefaultPrimitiveSpaces().space12,
          lg: const BaconDefaultPrimitiveSpaces().space16,
          xl: const BaconDefaultPrimitiveSpaces().space20,
          x2l: const BaconDefaultPrimitiveSpaces().space24,
          x3l: const BaconDefaultPrimitiveSpaces().space32,
        );

  BaconDefaultPaddingScale.expanded()
      : super(
          x3s: const BaconDefaultPrimitiveSpaces().space4,
          x2s: const BaconDefaultPrimitiveSpaces().space8,
          xs: const BaconDefaultPrimitiveSpaces().space12,
          sm: const BaconDefaultPrimitiveSpaces().space16,
          md: const BaconDefaultPrimitiveSpaces().space20,
          lg: const BaconDefaultPrimitiveSpaces().space24,
          xl: const BaconDefaultPrimitiveSpaces().space32,
          x2l: const BaconDefaultPrimitiveSpaces().space40,
          x3l: const BaconDefaultPrimitiveSpaces().space48,
        );
}
