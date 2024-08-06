import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'divider_properties.dart';

class HiveDividerSizes extends ThemeExtension<HiveDividerSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveDividerProperties sm;

  HiveDividerSizes({
    required this.tokens,
    HiveDividerProperties? sm,
  }) : sm = sm ??
            HiveDividerProperties(
              gap: tokens.scale.gap.sm,
              height: 1,
              width: double.infinity,
              textStyle: tokens.typography.label.xs,
              iconSize: tokens.scale.component.x2s,
            );

  @override
  HiveDividerSizes copyWith({
    HiveTokens? tokens,
    HiveDividerProperties? sm,
  }) {
    return HiveDividerSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
    );
  }

  @override
  HiveDividerSizes lerp(ThemeExtension<HiveDividerSizes>? other, double t) {
    if (other is! HiveDividerSizes) return this;
    return HiveDividerSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDividerSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty("sm", sm));
  }
}
