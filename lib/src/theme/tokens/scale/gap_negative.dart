import 'package:bacon/src/theme/tokens/scale/base.dart';
import 'package:bacon/src/theme/tokens/variables/primitives/space.dart';

class BaconDefaultGapNegativeScale extends BaconBaseScale {
  const BaconDefaultGapNegativeScale({
    required super.xxxs,
    required super.xxs,
    required super.xs,
    required super.sm,
    required super.md,
    required super.lg,
    required super.xl,
    required super.xxl,
    required super.xxxl,
  });

  const BaconDefaultGapNegativeScale.defaultScale()
      : super(
          xxxs: baconSpaceNeg2,
          xxs: baconSpaceNeg4,
          xs: baconSpaceNeg8,
          sm: baconSpaceNeg12,
          md: baconSpaceNeg16,
          lg: baconSpaceNeg20,
          xl: baconSpaceNeg24,
          xxl: baconSpaceNeg32,
          xxxl: baconSpaceNeg40,
        );

  const BaconDefaultGapNegativeScale.compactScale()
      : super(
          xxxs: baconSpace0,
          xxs: baconSpaceNeg2,
          xs: baconSpaceNeg4,
          sm: baconSpaceNeg8,
          md: baconSpaceNeg12,
          lg: baconSpaceNeg16,
          xl: baconSpaceNeg20,
          xxl: baconSpaceNeg24,
          xxxl: baconSpaceNeg32,
        );

  const BaconDefaultGapNegativeScale.expandedScale()
      : super(
          xxxs: baconSpaceNeg4,
          xxs: baconSpaceNeg8,
          xs: baconSpaceNeg12,
          sm: baconSpaceNeg16,
          md: baconSpaceNeg20,
          lg: baconSpaceNeg24,
          xl: baconSpaceNeg32,
          xxl: baconSpaceNeg40,
          xxxl: baconSpaceNeg48,
        );
}
