import 'package:bacon/src/theme/components/checkbox/checkbox_size_properties.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconCheckboxSizes extends ThemeExtension<BaconCheckboxSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconCheckboxSizeProperties sm;
  final BaconCheckboxSizeProperties xs;

  BaconCheckboxSizes({
    required this.tokens,
    BaconCheckboxSizeProperties? sm,
    BaconCheckboxSizeProperties? xs,
  })  : sm = sm ??
            BaconCheckboxSizeProperties(
              borderRadius: tokens.shape.radii.x2s,
              textStyle: tokens.typography.label.x2s,
            ),
        xs = xs ??
            BaconCheckboxSizeProperties(
              borderRadius: tokens.shape.radii.x2s,
              textStyle: tokens.typography.label.x2s,
            );

  @override
  BaconCheckboxSizes copyWith({
    BaconTokens? tokens,
    BaconCheckboxSizeProperties? sm,
    BaconCheckboxSizeProperties? xs,
  }) {
    return BaconCheckboxSizes(
      tokens: tokens ?? this.tokens,
      sm: sm ?? this.sm,
      xs: xs ?? this.xs,
    );
  }

  @override
  BaconCheckboxSizes lerp(ThemeExtension<BaconCheckboxSizes>? other, double t) {
    if (other is! BaconCheckboxSizes) return this;

    return BaconCheckboxSizes(
      tokens: tokens.lerp(other.tokens, t),
      sm: sm.lerp(other.sm, t),
      xs: xs.lerp(other.xs, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconCheckboxSizes"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconCheckboxSizeProperties>("sm", sm))
      ..add(DiagnosticsProperty<BaconCheckboxSizeProperties>("xs", xs));
  }
}
