import 'package:bacon/src/theme/tokens/semantic_tokens/shape/radii/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseSemanticTokensShape
    extends ThemeExtension<BaconBaseSemanticTokensShape>
    with DiagnosticableTreeMixin {
  final BaconBaseRadiiSemanticTokensShape radii;

  const BaconBaseSemanticTokensShape({
    required this.radii,
  });

  @override
  BaconBaseSemanticTokensShape lerp(
    ThemeExtension<BaconBaseSemanticTokensShape>? other,
    double t,
  ) {
    if (other is! BaconBaseSemanticTokensShape) return this;

    return BaconBaseSemanticTokensShape(
      radii: radii.lerp(other.radii, t),
    );
  }

  @override
  BaconBaseSemanticTokensShape copyWith({
    BaconBaseRadiiSemanticTokensShape? radii,
  }) {
    return BaconBaseSemanticTokensShape(
      radii: radii ?? this.radii,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconBaseSemanticTokensShape"))
      ..add(DiagnosticsProperty<BaconBaseRadiiSemanticTokensShape>(
          "radii", radii));
  }
}
