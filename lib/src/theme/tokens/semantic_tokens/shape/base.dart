import 'package:bacon/src/theme/tokens/semantic_tokens/shape/radii/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseSemanticTokensShape
    extends ThemeExtension<BaconBaseSemanticTokensShape>
    with DiagnosticableTreeMixin {
  final BaconBaseRadiiSemanticTokensShape borderRadius;

  const BaconBaseSemanticTokensShape({
    required this.borderRadius,
  });

  @override
  BaconBaseSemanticTokensShape lerp(
    ThemeExtension<BaconBaseSemanticTokensShape>? other,
    double t,
  ) {
    if (other is! BaconBaseSemanticTokensShape) return this;

    return BaconBaseSemanticTokensShape(
      borderRadius: borderRadius.lerp(other.borderRadius, t),
    );
  }

  @override
  BaconBaseSemanticTokensShape copyWith({
    BaconBaseRadiiSemanticTokensShape? borderRadius,
  }) {
    return BaconBaseSemanticTokensShape(
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconBaseSemanticTokensShape"))
      ..add(DiagnosticsProperty<BaconBaseRadiiSemanticTokensShape>(
          "borderRadius", borderRadius));
  }
}
