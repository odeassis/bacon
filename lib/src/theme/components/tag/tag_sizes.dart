import 'package:bacon/src/theme/components/tag/tag_size_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTagSizes extends ThemeExtension<BaconTagSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconTagSizeProperties x2s;
  final BaconTagSizeProperties xs;
  final BaconTagSizeProperties sm;

  BaconTagSizes({
    required this.tokens,
    BaconTagSizeProperties? x2s,
    BaconTagSizeProperties? xs,
    BaconTagSizeProperties? sm,
  })  : x2s = x2s ??
            BaconTagSizeProperties(
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
            BaconTagSizeProperties(
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
            BaconTagSizeProperties(
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
  BaconTagSizes copyWith({
    BaconTokens? tokens,
    BaconTagSizeProperties? x2s,
    BaconTagSizeProperties? xs,
    BaconTagSizeProperties? sm,
  }) {
    return BaconTagSizes(
      tokens: tokens ?? this.tokens,
      x2s: x2s ?? this.x2s,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
    );
  }

  @override
  BaconTagSizes lerp(ThemeExtension<BaconTagSizes>? other, double t) {
    if (other is! BaconTagSizes) return this;

    return BaconTagSizes(
      tokens: tokens.lerp(other.tokens, t),
      x2s: x2s.lerp(other.x2s, t),
      xs: xs.lerp(other.xs, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTagSizes"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconTagSizeProperties>("x2s", x2s))
      ..add(DiagnosticsProperty<BaconTagSizeProperties>("xs", xs))
      ..add(DiagnosticsProperty<BaconTagSizeProperties>("sm", sm));
  }
}
