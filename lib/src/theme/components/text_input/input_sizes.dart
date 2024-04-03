import 'package:bacon/src/theme/components/text_input/input_size_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTextInputSizes extends ThemeExtension<BaconTextInputSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconTextInputSizeProperties sm;
  final BaconTextInputSizeProperties md;
  final BaconTextInputSizeProperties lg;
  final BaconTextInputSizeProperties xl;

  BaconTextInputSizes({
    required this.tokens,
    BaconTextInputSizeProperties? sm,
    BaconTextInputSizeProperties? md,
    BaconTextInputSizeProperties? lg,
    BaconTextInputSizeProperties? xl,
  })  : sm = sm ??
            BaconTextInputSizeProperties(
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
            BaconTextInputSizeProperties(
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
            BaconTextInputSizeProperties(
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
            BaconTextInputSizeProperties(
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
  BaconTextInputSizes copyWith({
    BaconTokens? tokens,
    BaconTextInputSizeProperties? sm,
    BaconTextInputSizeProperties? md,
    BaconTextInputSizeProperties? lg,
    BaconTextInputSizeProperties? xl,
  }) {
    return BaconTextInputSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  BaconTextInputSizes lerp(
      ThemeExtension<BaconTextInputSizes>? other, double t) {
    if (other is! BaconTextInputSizes) return this;

    return BaconTextInputSizes(
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
    properties.add(DiagnosticsProperty('type', 'BaconTextInputSizes'));
    properties.add(DiagnosticsProperty<BaconTokens>('tokens', tokens));
    properties.add(DiagnosticsProperty<BaconTextInputSizeProperties>('sm', sm));
    properties.add(DiagnosticsProperty<BaconTextInputSizeProperties>('md', md));
    properties.add(DiagnosticsProperty<BaconTextInputSizeProperties>('lg', lg));
    properties.add(DiagnosticsProperty<BaconTextInputSizeProperties>('xl', xl));
  }
}
