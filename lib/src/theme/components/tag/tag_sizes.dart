import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'tag_size_properties.dart';

@immutable
class HiveTagSizes extends ThemeExtension<HiveTagSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveTagSizeProperties x2s;
  final HiveTagSizeProperties xs;
  final HiveTagSizeProperties sm;

  HiveTagSizes({
    required this.tokens,
    HiveTagSizeProperties? x2s,
    HiveTagSizeProperties? xs,
    HiveTagSizeProperties? sm,
  })  : x2s = x2s ??
            HiveTagSizeProperties(
              borderRadius: tokens.shape.radii.x2s,
              gap: tokens.scale.gap.x2s,
              height: tokens.scale.component.x2s,
              iconSize: tokens.scale.component.x2s,
              padding:
                  EdgeInsets.symmetric(horizontal: tokens.scale.padding.x2s),
              textStyle: tokens.typography.label.x2s,
              upperCaseTextStyle: tokens.typography.label.x2s,
            ),
        xs = xs ??
            HiveTagSizeProperties(
              borderRadius: tokens.shape.radii.xs,
              gap: tokens.scale.gap.xs,
              height: tokens.scale.component.xs,
              iconSize: tokens.scale.component.xs,
              padding:
                  EdgeInsets.symmetric(horizontal: tokens.scale.padding.xs),
              textStyle: tokens.typography.label.xs,
              upperCaseTextStyle: tokens.typography.label.xs,
            ),
        sm = sm ??
            HiveTagSizeProperties(
              borderRadius: tokens.shape.radii.sm,
              gap: tokens.scale.gap.sm,
              height: tokens.scale.component.sm,
              iconSize: tokens.scale.component.sm,
              padding:
                  EdgeInsets.symmetric(horizontal: tokens.scale.padding.sm),
              textStyle: tokens.typography.label.sm,
              upperCaseTextStyle: tokens.typography.label.sm,
            );

  @override
  HiveTagSizes copyWith({
    HiveTokens? tokens,
    HiveTagSizeProperties? x2s,
    HiveTagSizeProperties? xs,
    HiveTagSizeProperties? sm,
  }) {
    return HiveTagSizes(
      tokens: tokens ?? this.tokens,
      x2s: x2s ?? this.x2s,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
    );
  }

  @override
  HiveTagSizes lerp(ThemeExtension<HiveTagSizes>? other, double t) {
    if (other is! HiveTagSizes) return this;

    return HiveTagSizes(
      tokens: tokens.lerp(other.tokens, t),
      x2s: x2s.lerp(other.x2s, t),
      xs: xs.lerp(other.xs, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTagSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveTagSizeProperties>("x2s", x2s));
    properties.add(DiagnosticsProperty<HiveTagSizeProperties>("xs", xs));
    properties.add(DiagnosticsProperty<HiveTagSizeProperties>("sm", sm));
  }
}
