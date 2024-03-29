import 'package:bacon/src/theme/components/badge/badge_size_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBadgeSizes extends ThemeExtension<BaconBadgeSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  /// The properties of the medium badge.
  final BaconBadgeSizeProperties md;

  /// The properties of the extra small badge.
  final BaconBadgeSizeProperties sm;

  BaconBadgeSizes({
    required this.tokens,
    BaconBadgeSizeProperties? md,
    BaconBadgeSizeProperties? sm,
  })  : md = md ??
            BaconBadgeSizeProperties(
              borderRadius: tokens.shape.borderRadius.x3l,
              gap: tokens.scale.gap.x3s,
              iconSizeValue: tokens.scale.component.x2s,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x3s,
                horizontal: tokens.scale.padding.xs,
              ),
              textStyle: tokens.typography.label.xs,
              upperCaseTextStyle:
                  tokens.typography.label.xs.copyWith(height: 1.4),
            ),
        sm = sm ??
            BaconBadgeSizeProperties(
              borderRadius: tokens.shape.borderRadius.xl,
              gap: tokens.scale.gap.x2s,
              iconSizeValue: tokens.scale.component.sm,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x2s,
                horizontal: tokens.scale.padding.xs,
              ),
              textStyle: tokens.typography.label.xxs,
              upperCaseTextStyle:
                  tokens.typography.label.xxs.copyWith(height: 1.4),
            );

  @override
  BaconBadgeSizes copyWith({
    BaconTokens? tokens,
    BaconBadgeSizeProperties? md,
    BaconBadgeSizeProperties? sm,
  }) {
    return BaconBadgeSizes(
      tokens: tokens ?? this.tokens,
      md: md ?? this.md,
      sm: sm ?? this.sm,
    );
  }

  @override
  BaconBadgeSizes lerp(ThemeExtension<BaconBadgeSizes>? other, double t) {
    if (other is! BaconBadgeSizes) return this;

    return BaconBadgeSizes(
      tokens: tokens.lerp(other.tokens, t),
      md: md.lerp(other.md, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconBadgeSizes"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconBadgeSizeProperties>("md", md))
      ..add(DiagnosticsProperty<BaconBadgeSizeProperties>("sm", sm));
  }
}
