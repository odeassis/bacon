import 'package:flutter/foundation.dart';

import '../../../primitives/primitives.dart';
import 'padding_tokens.dart';

@immutable
class HivePadding extends HivePaddingTokens {
  HivePadding()
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
        );

  HivePadding.compact()
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
        );

  HivePadding.expanded()
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
        );
}
