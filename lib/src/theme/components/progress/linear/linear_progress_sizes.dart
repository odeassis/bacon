import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../tokens/tokens.dart';
import 'linear_progress_size_properties.dart';

@immutable
class BaconLinearProgressSizes extends ThemeExtension<BaconLinearProgressSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  final BaconLinearProgressSizeProperties x6s;

  final BaconLinearProgressSizeProperties x5s;

  final BaconLinearProgressSizeProperties x4s;

  final BaconLinearProgressSizeProperties x3s;

  final BaconLinearProgressSizeProperties x2s;

  BaconLinearProgressSizes({
    required this.tokens,
    BaconLinearProgressSizeProperties? x6s,
    BaconLinearProgressSizeProperties? x5s,
    BaconLinearProgressSizeProperties? x4s,
    BaconLinearProgressSizeProperties? x3s,
    BaconLinearProgressSizeProperties? x2s,
  })  : x6s = x6s ??
            BaconLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x6s,
              thumbSizeValue: tokens.scale.component.x3s,
              verticalGap: tokens.scale.component.x4s,
              textStyle: tokens.typography.label.x2s,
            ),
        x5s = x5s ??
            BaconLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x5s,
              thumbSizeValue: tokens.scale.component.x3s,
              verticalGap: tokens.scale.component.x4s,
              textStyle: tokens.typography.label.x2s,
            ),
        x4s = x4s ??
            BaconLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x4s,
              thumbSizeValue: tokens.scale.component.x3s,
              verticalGap: 6,
              textStyle: tokens.typography.label.x2s,
            ),
        x3s = x3s ??
            BaconLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x3s,
              thumbSizeValue: tokens.scale.component.x2s,
              verticalGap: 6,
              textStyle: tokens.typography.label.x2s,
            ),
        x2s = x2s ??
            BaconLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x2s,
              thumbSizeValue: tokens.scale.component.x2s,
              verticalGap: tokens.scale.component.x5s,
              textStyle: tokens.typography.label.x2s,
            );

  @override
  BaconLinearProgressSizes copyWith({
    BaconTokens? tokens,
    BaconLinearProgressSizeProperties? x6s,
    BaconLinearProgressSizeProperties? x5s,
    BaconLinearProgressSizeProperties? x4s,
    BaconLinearProgressSizeProperties? x3s,
    BaconLinearProgressSizeProperties? x2s,
  }) {
    return BaconLinearProgressSizes(
      tokens: tokens ?? this.tokens,
      x6s: x6s ?? this.x6s,
      x5s: x5s ?? this.x5s,
      x4s: x4s ?? this.x4s,
      x3s: x3s ?? this.x3s,
      x2s: x2s ?? this.x2s,
    );
  }

  @override
  BaconLinearProgressSizes lerp(
      ThemeExtension<BaconLinearProgressSizes>? other, double t) {
    if (other is! BaconLinearProgressSizes) return this;

    return BaconLinearProgressSizes(
      tokens: tokens.lerp(other.tokens, t),
      x6s: x6s.lerp(other.x6s, t),
      x5s: x5s.lerp(other.x5s, t),
      x4s: x4s.lerp(other.x4s, t),
      x3s: x3s.lerp(other.x3s, t),
      x2s: x2s.lerp(other.x2s, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconLinearProgressSizes"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconLinearProgressSizeProperties>("x6s", x6s))
      ..add(DiagnosticsProperty<BaconLinearProgressSizeProperties>("x5s", x5s))
      ..add(DiagnosticsProperty<BaconLinearProgressSizeProperties>("x4s", x4s))
      ..add(DiagnosticsProperty<BaconLinearProgressSizeProperties>("x3s", x3s))
      ..add(DiagnosticsProperty<BaconLinearProgressSizeProperties>("x2s", x2s));
  }
}
