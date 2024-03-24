import 'package:bacon/src/theme/tokens/scale/base.dart';
import 'package:bacon/src/theme/tokens/variables/primitives/space.dart';

class BaconDefaultPaddingScale extends BaconBaseScale {
  const BaconDefaultPaddingScale({
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

  const BaconDefaultPaddingScale.defaultScale()
      : super(
          xxxs: baconSpace2,
          xxs: baconSpace4,
          xs: baconSpace8,
          sm: baconSpace12,
          md: baconSpace16,
          lg: baconSpace20,
          xl: baconSpace24,
          xxl: baconSpace32,
          xxxl: baconSpace40,
        );

  const BaconDefaultPaddingScale.compactScale()
      : super(
          xxxs: baconSpace0,
          xxs: baconSpace2,
          xs: baconSpace4,
          sm: baconSpace8,
          md: baconSpace12,
          lg: baconSpace16,
          xl: baconSpace20,
          xxl: baconSpace24,
          xxxl: baconSpace32,
        );

  const BaconDefaultPaddingScale.expandedScale()
      : super(
          xxxs: baconSpace4,
          xxs: baconSpace8,
          xs: baconSpace12,
          sm: baconSpace16,
          md: baconSpace20,
          lg: baconSpace24,
          xl: baconSpace32,
          xxl: baconSpace40,
          xxxl: baconSpace48,
        );
}
