import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../tokens/hive_tokens.dart';
import 'linear_progress_size_properties.dart';

@immutable
class HiveLinearProgressSizes extends ThemeExtension<HiveLinearProgressSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  final HiveLinearProgressSizeProperties x6s;

  final HiveLinearProgressSizeProperties x5s;

  final HiveLinearProgressSizeProperties x4s;

  final HiveLinearProgressSizeProperties x3s;

  final HiveLinearProgressSizeProperties x2s;

  HiveLinearProgressSizes({
    required this.tokens,
    HiveLinearProgressSizeProperties? x6s,
    HiveLinearProgressSizeProperties? x5s,
    HiveLinearProgressSizeProperties? x4s,
    HiveLinearProgressSizeProperties? x3s,
    HiveLinearProgressSizeProperties? x2s,
  })  : x6s = x6s ??
            HiveLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x6s,
              thumbSizeValue: tokens.scale.component.x3s,
              verticalGap: tokens.scale.component.x4s,
              textStyle: tokens.typography.label.x2s,
            ),
        x5s = x5s ??
            HiveLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x5s,
              thumbSizeValue: tokens.scale.component.x3s,
              verticalGap: tokens.scale.component.x4s,
              textStyle: tokens.typography.label.x2s,
            ),
        x4s = x4s ??
            HiveLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x4s,
              thumbSizeValue: tokens.scale.component.x3s,
              verticalGap: 6,
              textStyle: tokens.typography.label.x2s,
            ),
        x3s = x3s ??
            HiveLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x3s,
              thumbSizeValue: tokens.scale.component.x2s,
              verticalGap: 6,
              textStyle: tokens.typography.label.x2s,
            ),
        x2s = x2s ??
            HiveLinearProgressSizeProperties(
              borderRadius: tokens.shape.radii.surface,
              progressHeight: tokens.scale.component.x2s,
              thumbSizeValue: tokens.scale.component.x2s,
              verticalGap: tokens.scale.component.x5s,
              textStyle: tokens.typography.label.x2s,
            );

  @override
  HiveLinearProgressSizes copyWith({
    HiveTokens? tokens,
    HiveLinearProgressSizeProperties? x6s,
    HiveLinearProgressSizeProperties? x5s,
    HiveLinearProgressSizeProperties? x4s,
    HiveLinearProgressSizeProperties? x3s,
    HiveLinearProgressSizeProperties? x2s,
  }) {
    return HiveLinearProgressSizes(
      tokens: tokens ?? this.tokens,
      x6s: x6s ?? this.x6s,
      x5s: x5s ?? this.x5s,
      x4s: x4s ?? this.x4s,
      x3s: x3s ?? this.x3s,
      x2s: x2s ?? this.x2s,
    );
  }

  @override
  HiveLinearProgressSizes lerp(
      ThemeExtension<HiveLinearProgressSizes>? other, double t) {
    if (other is! HiveLinearProgressSizes) return this;

    return HiveLinearProgressSizes(
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
    properties.add(DiagnosticsProperty("type", "HiveLinearProgressSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressSizeProperties>("x6s", x6s));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressSizeProperties>("x5s", x5s));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressSizeProperties>("x4s", x4s));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressSizeProperties>("x3s", x3s));
    properties
        .add(DiagnosticsProperty<HiveLinearProgressSizeProperties>("x2s", x2s));
  }
}
