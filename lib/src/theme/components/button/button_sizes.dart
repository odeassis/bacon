import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'button_size_properties.dart';

@immutable
class HiveButtonSizes extends ThemeExtension<HiveButtonSizes>
    with DiagnosticableTreeMixin {
  /// The tokens of the Hive Design System.
  final HiveTokens tokens;

  /// The properties of the small HiveButton.
  final HiveButtonSizeProperties sm;

  /// The properties of the medium HiveButton.
  final HiveButtonSizeProperties md;

  HiveButtonSizes({
    required this.tokens,
    HiveButtonSizeProperties? sm,
    HiveButtonSizeProperties? md,
  })  : sm = sm ??
            HiveButtonSizeProperties(
              borderRadius: tokens.shape.radii.xs,
              gap: tokens.scale.gap.xs,
              height: tokens.scale.component.md,
              iconSize: tokens.scale.component.x2s,
              padding: EdgeInsets.symmetric(
                horizontal: tokens.scale.padding.xs,
                vertical: tokens.scale.padding.xs,
              ),
              textStyle: tokens.typography.label.xs,
            ),
        md = md ??
            HiveButtonSizeProperties(
              borderRadius: tokens.shape.radii.xs,
              gap: tokens.scale.gap.xs,
              height: tokens.scale.component.xl,
              iconSize: tokens.scale.component.xs,
              padding: EdgeInsets.symmetric(
                horizontal: tokens.scale.padding.sm,
                vertical: tokens.scale.padding.sm,
              ),
              textStyle: tokens.typography.label.sm,
            );

  @override
  HiveButtonSizes copyWith({
    HiveTokens? tokens,
    HiveButtonSizeProperties? sm,
    HiveButtonSizeProperties? md,
  }) {
    return HiveButtonSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
      md: md ?? this.md,
    );
  }

  @override
  HiveButtonSizes lerp(ThemeExtension<HiveButtonSizes>? other, double t) {
    if (other is! HiveButtonSizes) return this;

    return HiveButtonSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
      md: md.lerp(other.md, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveButtonSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveButtonSizeProperties>("sm", sm));
    properties.add(DiagnosticsProperty<HiveButtonSizeProperties>("md", md));
  }
}
