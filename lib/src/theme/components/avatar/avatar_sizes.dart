import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'avatar_size_properties.dart';

@immutable
class HiveAvatarSizes extends ThemeExtension<HiveAvatarSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  /// Extra large avatar size
  final HiveAvatarSizeProperties xl;

  /// Large avatar size
  final HiveAvatarSizeProperties lg;

  /// Medium avatar size
  final HiveAvatarSizeProperties md;

  /// Small avatar size
  final HiveAvatarSizeProperties sm;

  /// Extra small avatar size
  final HiveAvatarSizeProperties xs;

  HiveAvatarSizes({
    required this.tokens,
    HiveAvatarSizeProperties? xl,
    HiveAvatarSizeProperties? lg,
    HiveAvatarSizeProperties? md,
    HiveAvatarSizeProperties? sm,
    HiveAvatarSizeProperties? xs,
  })  : xl = xl ??
            HiveAvatarSizeProperties(
              avatarSize: tokens.scale.component.xl,
              borderRadius: tokens.shape.radii.x3l,
              badgeSize: tokens.scale.component.x3s,
              badgeMargin: tokens.scale.component.x6s,
              textStyle: tokens.typography.label.lg,
            ),
        lg = lg ??
            HiveAvatarSizeProperties(
              avatarSize: tokens.scale.component.lg,
              borderRadius: tokens.shape.radii.x3l,
              badgeSize: tokens.scale.component.x3s,
              badgeMargin: tokens.scale.component.x6s,
              textStyle: tokens.typography.label.md,
            ),
        md = md ??
            HiveAvatarSizeProperties(
              avatarSize: tokens.scale.component.md,
              borderRadius: tokens.shape.radii.x3l,
              badgeSize: tokens.scale.component.x4s,
              badgeMargin: tokens.scale.component.x6s,
              textStyle: tokens.typography.label.xs,
            ),
        sm = sm ??
            HiveAvatarSizeProperties(
              avatarSize: tokens.scale.component.sm,
              borderRadius: tokens.shape.radii.x3l,
              badgeSize: tokens.scale.component.x4s,
              badgeMargin: tokens.scale.component.x7s,
              textStyle: tokens.typography.label.xs,
            ),
        xs = xs ??
            HiveAvatarSizeProperties(
              avatarSize: tokens.scale.component.xs,
              borderRadius: tokens.shape.radii.x3l,
              badgeSize: tokens.scale.component.x5s,
              badgeMargin: tokens.scale.component.x7s,
              textStyle: tokens.typography.label.xs,
            );

  @override
  HiveAvatarSizes copyWith({
    HiveTokens? tokens,
    HiveAvatarSizeProperties? xl,
    HiveAvatarSizeProperties? lg,
    HiveAvatarSizeProperties? md,
    HiveAvatarSizeProperties? sm,
    HiveAvatarSizeProperties? xs,
  }) {
    return HiveAvatarSizes(
      tokens: tokens ?? this.tokens,
      xl: xl ?? this.xl,
      lg: lg ?? this.lg,
      md: md ?? this.md,
      sm: sm ?? this.sm,
      xs: xs ?? this.xs,
    );
  }

  @override
  HiveAvatarSizes lerp(ThemeExtension<HiveAvatarSizes>? other, double t) {
    if (other is! HiveAvatarSizes) return this;
    return HiveAvatarSizes(
      tokens: tokens.lerp(other.tokens, t),
      xl: xl.lerp(other.xl, t),
      lg: lg.lerp(other.lg, t),
      md: md.lerp(other.md, t),
      sm: sm.lerp(other.sm, t),
      xs: xs.lerp(other.xs, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAvatarSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveAvatarSizeProperties>("xl", xl));
    properties.add(DiagnosticsProperty<HiveAvatarSizeProperties>("lg", lg));
    properties.add(DiagnosticsProperty<HiveAvatarSizeProperties>("md", md));
    properties.add(DiagnosticsProperty<HiveAvatarSizeProperties>("sm", sm));
    properties.add(DiagnosticsProperty<HiveAvatarSizeProperties>("xs", xs));
  }
}
