import 'package:bacon/src/theme/tokens/primitives/space/spaces.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/gap/base.dart';
import 'package:flutter/foundation.dart';

@immutable
class BaconDefaultGapScale extends BaconBaseGapSemanticTokensScale {
  BaconDefaultGapScale.kDefault()
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
          negativeX3s: const BaconDefaultPrimitiveSpaces().negativeSpace2,
          negativeX2s: const BaconDefaultPrimitiveSpaces().negativeSpace4,
          negativeXs: const BaconDefaultPrimitiveSpaces().negativeSpace8,
          negativeSm: const BaconDefaultPrimitiveSpaces().negativeSpace12,
          negativeMd: const BaconDefaultPrimitiveSpaces().negativeSpace16,
          negativeLg: const BaconDefaultPrimitiveSpaces().negativeSpace20,
          negativeXl: const BaconDefaultPrimitiveSpaces().negativeSpace24,
          negativeX2l: const BaconDefaultPrimitiveSpaces().negativeSpace32,
          negativeX3l: const BaconDefaultPrimitiveSpaces().negativeSpace40,
        );

  BaconDefaultGapScale.compact()
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
          negativeX3s: const BaconDefaultPrimitiveSpaces().space0,
          negativeX2s: const BaconDefaultPrimitiveSpaces().negativeSpace2,
          negativeXs: const BaconDefaultPrimitiveSpaces().negativeSpace4,
          negativeSm: const BaconDefaultPrimitiveSpaces().negativeSpace8,
          negativeMd: const BaconDefaultPrimitiveSpaces().negativeSpace12,
          negativeLg: const BaconDefaultPrimitiveSpaces().negativeSpace16,
          negativeXl: const BaconDefaultPrimitiveSpaces().negativeSpace20,
          negativeX2l: const BaconDefaultPrimitiveSpaces().negativeSpace24,
          negativeX3l: const BaconDefaultPrimitiveSpaces().negativeSpace32,
        );

  BaconDefaultGapScale.expanded()
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
          negativeX3s: const BaconDefaultPrimitiveSpaces().negativeSpace4,
          negativeX2s: const BaconDefaultPrimitiveSpaces().negativeSpace8,
          negativeXs: const BaconDefaultPrimitiveSpaces().negativeSpace12,
          negativeSm: const BaconDefaultPrimitiveSpaces().negativeSpace16,
          negativeMd: const BaconDefaultPrimitiveSpaces().negativeSpace20,
          negativeLg: const BaconDefaultPrimitiveSpaces().negativeSpace24,
          negativeXl: const BaconDefaultPrimitiveSpaces().negativeSpace32,
          negativeX2l: const BaconDefaultPrimitiveSpaces().negativeSpace40,
          negativeX3l: const BaconDefaultPrimitiveSpaces().negativeSpace48,
        );
}
