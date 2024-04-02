import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/button/button_size_properties.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconButtonSizes extends ThemeExtension<BaconButtonSizes>
    with DiagnosticableTreeMixin {
  /// The tokens of the Bacon Design System.
  final BaconTokens tokens;

  /// The properties of the small BaconButton.
  final BaconButtonSizeProperties sm;

  /// The properties of the medium BaconButton.
  final BaconButtonSizeProperties md;

  BaconButtonSizes({
    required this.tokens,
    BaconButtonSizeProperties? sm,
    BaconButtonSizeProperties? md,
  })  : sm = sm ??
            BaconButtonSizeProperties(
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
            BaconButtonSizeProperties(
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
  BaconButtonSizes copyWith({
    BaconTokens? tokens,
    BaconButtonSizeProperties? sm,
    BaconButtonSizeProperties? md,
  }) {
    return BaconButtonSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
      md: md ?? this.md,
    );
  }

  @override
  BaconButtonSizes lerp(ThemeExtension<BaconButtonSizes>? other, double t) {
    if (other is! BaconButtonSizes) return this;

    return BaconButtonSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
      md: md.lerp(other.md, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconButtonSizes"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconButtonSizeProperties>("sm", sm))
      ..add(DiagnosticsProperty<BaconButtonSizeProperties>("md", md));
  }
}
