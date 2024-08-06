import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'input_size_properties.dart';

@immutable
class HiveTextInputSizes extends ThemeExtension<HiveTextInputSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveTextInputSizeProperties sm;
  final HiveTextInputSizeProperties md;
  final HiveTextInputSizeProperties lg;
  final HiveTextInputSizeProperties xl;

  HiveTextInputSizes({
    required this.tokens,
    HiveTextInputSizeProperties? sm,
    HiveTextInputSizeProperties? md,
    HiveTextInputSizeProperties? lg,
    HiveTextInputSizeProperties? xl,
  })  : sm = sm ??
            HiveTextInputSizeProperties(
              gap: tokens.scale.gap.xs,
              borderRadius: tokens.shape.radii.xs,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x3s,
                horizontal: tokens.scale.padding.xs,
              ),
              iconSize: tokens.scale.component.xs,
              labelStyle: tokens.typography.label.sm,
              height: tokens.scale.component.x2l,
            ),
        md = md ??
            HiveTextInputSizeProperties(
              gap: tokens.scale.gap.x2s,
              borderRadius: tokens.shape.radii.xs,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.xs,
                horizontal: tokens.scale.padding.xs,
              ),
              iconSize: tokens.scale.component.xs,
              labelStyle: tokens.typography.label.sm,
              height: tokens.scale.component.x2l,
            ),
        lg = lg ??
            HiveTextInputSizeProperties(
              gap: tokens.scale.gap.xs,
              borderRadius: tokens.shape.radii.xs,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x3s,
                horizontal: tokens.scale.padding.xs,
              ),
              iconSize: tokens.scale.component.xs,
              labelStyle: tokens.typography.label.sm,
              height: tokens.scale.component.x2l,
            ),
        xl = xl ??
            HiveTextInputSizeProperties(
              gap: tokens.scale.gap.xs,
              borderRadius: tokens.shape.radii.xs,
              padding: EdgeInsets.symmetric(
                vertical: tokens.scale.padding.x3s,
                horizontal: tokens.scale.padding.xs,
              ),
              iconSize: tokens.scale.component.xs,
              labelStyle: tokens.typography.label.sm,
              height: tokens.scale.component.x2l,
            );

  @override
  HiveTextInputSizes copyWith({
    HiveTokens? tokens,
    HiveTextInputSizeProperties? sm,
    HiveTextInputSizeProperties? md,
    HiveTextInputSizeProperties? lg,
    HiveTextInputSizeProperties? xl,
  }) {
    return HiveTextInputSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  HiveTextInputSizes lerp(ThemeExtension<HiveTextInputSizes>? other, double t) {
    if (other is! HiveTextInputSizes) return this;

    return HiveTextInputSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
      md: md.lerp(other.md, t),
      lg: lg.lerp(other.lg, t),
      xl: xl.lerp(other.xl, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HiveTextInputSizes'));
    properties.add(DiagnosticsProperty<HiveTokens>('tokens', tokens));
    properties.add(DiagnosticsProperty<HiveTextInputSizeProperties>('sm', sm));
    properties.add(DiagnosticsProperty<HiveTextInputSizeProperties>('md', md));
    properties.add(DiagnosticsProperty<HiveTextInputSizeProperties>('lg', lg));
    properties.add(DiagnosticsProperty<HiveTextInputSizeProperties>('xl', xl));
  }
}
