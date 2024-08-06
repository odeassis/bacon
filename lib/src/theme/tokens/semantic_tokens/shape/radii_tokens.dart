import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'radii/border_radius_tokens.dart';

@immutable
class HiveShapeTokens extends ThemeExtension<HiveShapeTokens>
    with DiagnosticableTreeMixin {
  final HiveRadiiShapeTokens radii;

  const HiveShapeTokens({
    required this.radii,
  });

  @override
  HiveShapeTokens lerp(
    ThemeExtension<HiveShapeTokens>? other,
    double t,
  ) {
    if (other is! HiveShapeTokens) return this;

    return HiveShapeTokens(
      radii: radii.lerp(other.radii, t),
    );
  }

  @override
  HiveShapeTokens copyWith({
    HiveRadiiShapeTokens? radii,
  }) {
    return HiveShapeTokens(
      radii: radii ?? this.radii,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "HiveShapeTokens"))
      ..add(DiagnosticsProperty<HiveRadiiShapeTokens>("radii", radii));
  }
}
