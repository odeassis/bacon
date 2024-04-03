import 'package:bacon/src/theme/components/divider/divider_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconDividerSizes extends ThemeExtension<BaconDividerSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconDividerProperties sm;

  BaconDividerSizes({
    required this.tokens,
    BaconDividerProperties? sm,
  }) : sm = sm ??
            BaconDividerProperties(
              gap: tokens.scale.gap.sm,
              height: 1,
              width: double.infinity,
              textStyle: tokens.typography.label.xs,
              iconSize: tokens.scale.component.x2s,
            );

  @override
  BaconDividerSizes copyWith({
    BaconTokens? tokens,
    BaconDividerProperties? sm,
  }) {
    return BaconDividerSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
    );
  }

  @override
  BaconDividerSizes lerp(ThemeExtension<BaconDividerSizes>? other, double t) {
    if (other is! BaconDividerSizes) return this;
    return BaconDividerSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconDividerSizes"));
    properties.add(DiagnosticsProperty<BaconTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty("sm", sm));
  }
}
