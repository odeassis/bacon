import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'checkbox_size_properties.dart';

@immutable
class HiveCheckboxSizes extends ThemeExtension<HiveCheckboxSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveCheckboxSizeProperties sm;
  final HiveCheckboxSizeProperties xs;

  HiveCheckboxSizes({
    required this.tokens,
    HiveCheckboxSizeProperties? sm,
    HiveCheckboxSizeProperties? xs,
  })  : sm = sm ??
            HiveCheckboxSizeProperties(
              borderRadius: tokens.shape.radii.x2s,
              textStyle: tokens.typography.label.x2s,
            ),
        xs = xs ??
            HiveCheckboxSizeProperties(
              borderRadius: tokens.shape.radii.x2s,
              textStyle: tokens.typography.label.x2s,
            );

  @override
  HiveCheckboxSizes copyWith({
    HiveTokens? tokens,
    HiveCheckboxSizeProperties? sm,
    HiveCheckboxSizeProperties? xs,
  }) {
    return HiveCheckboxSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
      xs: xs ?? this.xs,
    );
  }

  @override
  HiveCheckboxSizes lerp(ThemeExtension<HiveCheckboxSizes>? other, double t) {
    if (other is! HiveCheckboxSizes) return this;

    return HiveCheckboxSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
      xs: xs.lerp(other.xs, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveCheckboxSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveCheckboxSizeProperties>("sm", sm));
    properties.add(DiagnosticsProperty<HiveCheckboxSizeProperties>("xs", xs));
  }
}
