import 'package:bacon/variables/primitives/size.dart';
import 'package:flutter/material.dart';

class BaconScaleComponent {
  final int xxxs;
  final int xxs;
  final int xs;
  final int s;
  final int m;
  final int l;
  final int xl;
  final int xxl;
  final int xxxl;

  const BaconScaleComponent._({
    required this.xxxs,
    required this.xxs,
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.xxl,
    required this.xxxl,
  });

  static const base = BaconScaleComponent._(
    xxxs: BaconSize.size2,
    xxs: BaconSize.size4,
    xs: BaconSize.size8,
    s: BaconSize.size12,
    m: BaconSize.size16,
    l: BaconSize.size20,
    xl: BaconSize.size24,
    xxl: BaconSize.size32,
    xxxl: BaconSize.size40,
  );
  static const compact = BaconScaleComponent._(
    xxxs: BaconSize.size0,
    xxs: BaconSize.size2,
    xs: BaconSize.size4,
    s: BaconSize.size8,
    m: BaconSize.size12,
    l: BaconSize.size16,
    xl: BaconSize.size20,
    xxl: BaconSize.size24,
    xxxl: BaconSize.size32,
  );
  static const expanded = BaconScaleComponent._(
    xxxs: BaconSize.size4,
    xxs: BaconSize.size8,
    xs: BaconSize.size12,
    s: BaconSize.size16,
    m: BaconSize.size20,
    l: BaconSize.size24,
    xl: BaconSize.size32,
    xxl: BaconSize.size40,
    xxxl: BaconSize.size48,
  );

  static BaconScaleComponent of(BuildContext context) {
    final platformWidth = MediaQuery.of(context).size.width;

    if (platformWidth < BaconSize.size320) {
      return BaconScaleComponent.compact;
    } else if (platformWidth >= BaconSize.size1024) {
      return BaconScaleComponent.expanded;
    }

    return BaconScaleComponent.base;
  }
}
