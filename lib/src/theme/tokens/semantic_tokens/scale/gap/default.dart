import 'package:flutter/foundation.dart';

import '../../../primitives/primitives.dart';
import 'gaps_tokens.dart';

@immutable
class HiveGap extends HiveGapTokens {
  HiveGap()
      : super(
          x3s: HiveSpaces.spaces.space2,
          x2s: HiveSpaces.spaces.space4,
          xs: HiveSpaces.spaces.space8,
          sm: HiveSpaces.spaces.space12,
          md: HiveSpaces.spaces.space16,
          lg: HiveSpaces.spaces.space20,
          xl: HiveSpaces.spaces.space24,
          x2l: HiveSpaces.spaces.space32,
          x3l: HiveSpaces.spaces.space40,
          negativeX3s: HiveSpaces.spaces.negativeSpace2,
          negativeX2s: HiveSpaces.spaces.negativeSpace4,
          negativeXs: HiveSpaces.spaces.negativeSpace8,
          negativeSm: HiveSpaces.spaces.negativeSpace12,
          negativeMd: HiveSpaces.spaces.negativeSpace16,
          negativeLg: HiveSpaces.spaces.negativeSpace20,
          negativeXl: HiveSpaces.spaces.negativeSpace24,
          negativeX2l: HiveSpaces.spaces.negativeSpace32,
          negativeX3l: HiveSpaces.spaces.negativeSpace40,
        );

  HiveGap.compact()
      : super(
          x3s: HiveSpaces.spaces.space0,
          x2s: HiveSpaces.spaces.space2,
          xs: HiveSpaces.spaces.space4,
          sm: HiveSpaces.spaces.space8,
          md: HiveSpaces.spaces.space12,
          lg: HiveSpaces.spaces.space16,
          xl: HiveSpaces.spaces.space20,
          x2l: HiveSpaces.spaces.space24,
          x3l: HiveSpaces.spaces.space32,
          negativeX3s: HiveSpaces.spaces.space0,
          negativeX2s: HiveSpaces.spaces.negativeSpace2,
          negativeXs: HiveSpaces.spaces.negativeSpace4,
          negativeSm: HiveSpaces.spaces.negativeSpace8,
          negativeMd: HiveSpaces.spaces.negativeSpace12,
          negativeLg: HiveSpaces.spaces.negativeSpace16,
          negativeXl: HiveSpaces.spaces.negativeSpace20,
          negativeX2l: HiveSpaces.spaces.negativeSpace24,
          negativeX3l: HiveSpaces.spaces.negativeSpace32,
        );

  HiveGap.expanded()
      : super(
          x3s: HiveSpaces.spaces.space4,
          x2s: HiveSpaces.spaces.space8,
          xs: HiveSpaces.spaces.space12,
          sm: HiveSpaces.spaces.space16,
          md: HiveSpaces.spaces.space20,
          lg: HiveSpaces.spaces.space24,
          xl: HiveSpaces.spaces.space32,
          x2l: HiveSpaces.spaces.space40,
          x3l: HiveSpaces.spaces.space48,
          negativeX3s: HiveSpaces.spaces.negativeSpace4,
          negativeX2s: HiveSpaces.spaces.negativeSpace8,
          negativeXs: HiveSpaces.spaces.negativeSpace12,
          negativeSm: HiveSpaces.spaces.negativeSpace16,
          negativeMd: HiveSpaces.spaces.negativeSpace20,
          negativeLg: HiveSpaces.spaces.negativeSpace24,
          negativeXl: HiveSpaces.spaces.negativeSpace32,
          negativeX2l: HiveSpaces.spaces.negativeSpace40,
          negativeX3l: HiveSpaces.spaces.negativeSpace48,
        );
}
