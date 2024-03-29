import 'package:bacon/src/theme/tokens/primitives/space/spaces.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/component/base.dart';
import 'package:flutter/foundation.dart';

@immutable
class BaconDefaultComponentScale
    extends BaconBaseComponentsSemanticTokensScale {
  BaconDefaultComponentScale.kDefault()
      : super(
          x7s: const BaconDefaultPrimitiveSpaces().space2,
          x6s: const BaconDefaultPrimitiveSpaces().space4,
          x5s: const BaconDefaultPrimitiveSpaces().space6,
          x4s: const BaconDefaultPrimitiveSpaces().space8,
          x3s: const BaconDefaultPrimitiveSpaces().space12,
          x2s: const BaconDefaultPrimitiveSpaces().space16,
          xs: const BaconDefaultPrimitiveSpaces().space20,
          sm: const BaconDefaultPrimitiveSpaces().space24,
          md: const BaconDefaultPrimitiveSpaces().space32,
          lg: const BaconDefaultPrimitiveSpaces().space40,
          xl: const BaconDefaultPrimitiveSpaces().space44,
          x2l: const BaconDefaultPrimitiveSpaces().space48,
          x3l: const BaconDefaultPrimitiveSpaces().space56,
          x4l: const BaconDefaultPrimitiveSpaces().space64,
          x5l: const BaconDefaultPrimitiveSpaces().space72,
          x6l: const BaconDefaultPrimitiveSpaces().space80,
          x7l: const BaconDefaultPrimitiveSpaces().space88,
        );

  BaconDefaultComponentScale.compact()
      : super(
          x7s: const BaconDefaultPrimitiveSpaces().space0,
          x6s: const BaconDefaultPrimitiveSpaces().space2,
          x5s: const BaconDefaultPrimitiveSpaces().space4,
          x4s: const BaconDefaultPrimitiveSpaces().space6,
          x3s: const BaconDefaultPrimitiveSpaces().space8,
          x2s: const BaconDefaultPrimitiveSpaces().space12,
          xs: const BaconDefaultPrimitiveSpaces().space16,
          sm: const BaconDefaultPrimitiveSpaces().space20,
          md: const BaconDefaultPrimitiveSpaces().space24,
          lg: const BaconDefaultPrimitiveSpaces().space32,
          xl: const BaconDefaultPrimitiveSpaces().space40,
          x2l: const BaconDefaultPrimitiveSpaces().space44,
          x3l: const BaconDefaultPrimitiveSpaces().space48,
          x4l: const BaconDefaultPrimitiveSpaces().space56,
          x5l: const BaconDefaultPrimitiveSpaces().space64,
          x6l: const BaconDefaultPrimitiveSpaces().space72,
          x7l: const BaconDefaultPrimitiveSpaces().space80,
        );

  BaconDefaultComponentScale.expanded()
      : super(
          x7s: const BaconDefaultPrimitiveSpaces().space4,
          x6s: const BaconDefaultPrimitiveSpaces().space6,
          x5s: const BaconDefaultPrimitiveSpaces().space8,
          x4s: const BaconDefaultPrimitiveSpaces().space12,
          x3s: const BaconDefaultPrimitiveSpaces().space16,
          x2s: const BaconDefaultPrimitiveSpaces().space20,
          xs: const BaconDefaultPrimitiveSpaces().space24,
          sm: const BaconDefaultPrimitiveSpaces().space32,
          md: const BaconDefaultPrimitiveSpaces().space40,
          lg: const BaconDefaultPrimitiveSpaces().space44,
          xl: const BaconDefaultPrimitiveSpaces().space48,
          x2l: const BaconDefaultPrimitiveSpaces().space56,
          x3l: const BaconDefaultPrimitiveSpaces().space64,
          x4l: const BaconDefaultPrimitiveSpaces().space72,
          x5l: const BaconDefaultPrimitiveSpaces().space80,
          x6l: const BaconDefaultPrimitiveSpaces().space88,
          x7l: const BaconDefaultPrimitiveSpaces().space96,
        );
}
