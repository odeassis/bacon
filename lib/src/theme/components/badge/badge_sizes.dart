import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'badge_size_properties.dart';

@immutable
class HiveBadgeSizes extends ThemeExtension<HiveBadgeSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  /// The properties of the medium badge.
  final HiveBadgeSizeProperties md;

  /// The properties of the extra small badge.
  final HiveBadgeSizeProperties sm;

  HiveBadgeSizes({
    required this.tokens,
    HiveBadgeSizeProperties? md,
    HiveBadgeSizeProperties? sm,
  })  : md = md ??
            HiveBadgeSizeProperties(
              borderRadius: tokens.shape.radii.x3l,
              gap: tokens.scale.gap.x3s,
              iconSizeValue: tokens.scale.component.x2s,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x3s,
                horizontal: tokens.scale.padding.xs,
              ),
              textStyle: tokens.typography.label.sm,
              upperCaseTextStyle:
                  tokens.typography.label.sm.copyWith(height: 1.4),
            ),
        sm = sm ??
            HiveBadgeSizeProperties(
              borderRadius: tokens.shape.radii.x3l,
              gap: tokens.scale.gap.x2s,
              iconSizeValue: tokens.scale.component.x3s,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x3s,
                horizontal: tokens.scale.padding.x2s,
              ),
              textStyle: tokens.typography.label.xs,
              upperCaseTextStyle:
                  tokens.typography.label.xs.copyWith(height: 1.4),
            );

  @override
  HiveBadgeSizes copyWith({
    HiveTokens? tokens,
    HiveBadgeSizeProperties? md,
    HiveBadgeSizeProperties? sm,
  }) {
    return HiveBadgeSizes(
      tokens: tokens ?? this.tokens,
      md: md ?? this.md,
      sm: sm ?? this.sm,
    );
  }

  @override
  HiveBadgeSizes lerp(ThemeExtension<HiveBadgeSizes>? other, double t) {
    if (other is! HiveBadgeSizes) return this;

    return HiveBadgeSizes(
      tokens: tokens.lerp(other.tokens, t),
      md: md.lerp(other.md, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveBadgeSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveBadgeSizeProperties>("md", md));
    properties.add(DiagnosticsProperty<HiveBadgeSizeProperties>("sm", sm));
  }
}
