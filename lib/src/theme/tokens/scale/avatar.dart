import 'package:bacon/src/theme/tokens/scale/base.dart';
import 'package:bacon/src/theme/tokens/variables/primitives/size.dart';

class BaconDefaultAvatarScale extends BaconBaseScale {
  const BaconDefaultAvatarScale({
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

  const BaconDefaultAvatarScale.defaultScale()
      : super(
          xxxs: BaconSize.size2,
          xxs: BaconSize.size4,
          xs: BaconSize.size8,
          sm: BaconSize.size12,
          md: BaconSize.size16,
          lg: BaconSize.size20,
          xl: BaconSize.size24,
          xxl: BaconSize.size32,
          xxxl: BaconSize.size40,
        );

  const BaconDefaultAvatarScale.compactScale()
      : super(
          xxxs: BaconSize.size0,
          xxs: BaconSize.size2,
          xs: BaconSize.size4,
          sm: BaconSize.size8,
          md: BaconSize.size12,
          lg: BaconSize.size16,
          xl: BaconSize.size20,
          xxl: BaconSize.size24,
          xxxl: BaconSize.size32,
        );

  const BaconDefaultAvatarScale.expandedScale()
      : super(
          xxxs: BaconSize.size4,
          xxs: BaconSize.size8,
          xs: BaconSize.size12,
          sm: BaconSize.size16,
          md: BaconSize.size20,
          lg: BaconSize.size24,
          xl: BaconSize.size32,
          xxl: BaconSize.size40,
          xxxl: BaconSize.size48,
        );
}
