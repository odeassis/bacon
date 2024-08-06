import 'package:flutter/foundation.dart';

import '../../../primitives/primitives.dart';
import 'components_tokens.dart';

@immutable
class HiveComponentsScale extends HiveComponentsScaleTokens {
  HiveComponentsScale()
      : super(
          x7s: HiveSizes.sizes.size2,
          x6s: HiveSizes.sizes.size4,
          x5s: HiveSizes.sizes.size6,
          x4s: HiveSizes.sizes.size8,
          x3s: HiveSizes.sizes.size12,
          x2s: HiveSizes.sizes.size16,
          xs: HiveSizes.sizes.size20,
          sm: HiveSizes.sizes.size24,
          md: HiveSizes.sizes.size32,
          lg: HiveSizes.sizes.size40,
          xl: HiveSizes.sizes.size44,
          x2l: HiveSizes.sizes.size48,
          x3l: HiveSizes.sizes.size56,
          x4l: HiveSizes.sizes.size64,
          x5l: HiveSizes.sizes.size72,
          x6l: HiveSizes.sizes.size80,
          x7l: HiveSizes.sizes.size88,
        );

  HiveComponentsScale.compact()
      : super(
          x7s: HiveSizes.sizes.size0,
          x6s: HiveSizes.sizes.size2,
          x5s: HiveSizes.sizes.size4,
          x4s: HiveSizes.sizes.size6,
          x3s: HiveSizes.sizes.size8,
          x2s: HiveSizes.sizes.size12,
          xs: HiveSizes.sizes.size16,
          sm: HiveSizes.sizes.size20,
          md: HiveSizes.sizes.size24,
          lg: HiveSizes.sizes.size32,
          xl: HiveSizes.sizes.size40,
          x2l: HiveSizes.sizes.size44,
          x3l: HiveSizes.sizes.size48,
          x4l: HiveSizes.sizes.size56,
          x5l: HiveSizes.sizes.size64,
          x6l: HiveSizes.sizes.size72,
          x7l: HiveSizes.sizes.size80,
        );

  HiveComponentsScale.expanded()
      : super(
          x7s: HiveSizes.sizes.size4,
          x6s: HiveSizes.sizes.size6,
          x5s: HiveSizes.sizes.size8,
          x4s: HiveSizes.sizes.size12,
          x3s: HiveSizes.sizes.size16,
          x2s: HiveSizes.sizes.size20,
          xs: HiveSizes.sizes.size24,
          sm: HiveSizes.sizes.size32,
          md: HiveSizes.sizes.size40,
          lg: HiveSizes.sizes.size44,
          xl: HiveSizes.sizes.size48,
          x2l: HiveSizes.sizes.size56,
          x3l: HiveSizes.sizes.size64,
          x4l: HiveSizes.sizes.size72,
          x5l: HiveSizes.sizes.size80,
          x6l: HiveSizes.sizes.size88,
          x7l: HiveSizes.sizes.size96,
        );
}
