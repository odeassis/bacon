import 'package:bacon/src/theme/tokens/opacities.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/modes.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/scales.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/shape/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/shape/shapes.dart';
import 'package:bacon/src/theme/tokens/transitions.dart';
import 'package:bacon/src/theme/tokens/typography/base.dart';
import 'package:bacon/src/theme/tokens/typography/typography.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTokens extends ThemeExtension<BaconTokens>
    with DiagnosticableTreeMixin {
  static BaconTokens light = BaconTokens(
      modes: BaconDefaultSemanticTokensModes.light(),
      scale: BaconDefaultSemanticTokensScale.kDefault(),
      shape: BaconDefaultSemanticTokensShapes.kDefault(),
      typography: BaconBaseTypography(
        display: BaconDefaultSemanticTokensTypography.display,
        headline: BaconDefaultSemanticTokensTypography.headline,
        paragraph: BaconDefaultSemanticTokensTypography.paragraph,
        label: BaconDefaultSemanticTokensTypography.label,
      ),
      transitions: BaconTransitions.transitions,
      opacities: BaconOpacities.opacities);

  static BaconTokens dark = BaconTokens(
      modes: BaconDefaultSemanticTokensModes.dark(),
      scale: BaconDefaultSemanticTokensScale.kDefault(),
      shape: BaconDefaultSemanticTokensShapes.kDefault(),
      typography: BaconBaseTypography(
        display: BaconDefaultSemanticTokensTypography.display,
        headline: BaconDefaultSemanticTokensTypography.headline,
        paragraph: BaconDefaultSemanticTokensTypography.paragraph,
        label: BaconDefaultSemanticTokensTypography.label,
      ),
      transitions: BaconTransitions.transitions,
      opacities: BaconOpacities.opacities);

  final BaconSemanticTokensModes modes;
  final BaconSemanticTokensScale scale;
  final BaconBaseSemanticTokensShape shape;
  final BaconBaseTypography typography;
  final BaconTransitions transitions;
  final BaconOpacities opacities;

  const BaconTokens({
    required this.modes,
    required this.scale,
    required this.shape,
    required this.typography,
    required this.transitions,
    required this.opacities,
  });

  @override
  BaconTokens copyWith({
    BaconSemanticTokensModes? modes,
    BaconSemanticTokensScale? scale,
    BaconBaseSemanticTokensShape? shape,
    BaconBaseTypography? typography,
    BaconTransitions? transitions,
    BaconOpacities? opacities,
  }) {
    return BaconTokens(
      modes: modes ?? this.modes,
      scale: scale ?? this.scale,
      shape: shape ?? this.shape,
      typography: typography ?? this.typography,
      transitions: transitions ?? this.transitions,
      opacities: opacities ?? this.opacities,
    );
  }

  @override
  BaconTokens lerp(
    ThemeExtension<BaconTokens>? other,
    double t,
  ) {
    if (other is! BaconTokens) return this;
    return BaconTokens(
      modes: modes.lerp(other.modes, t),
      scale: scale.lerp(other.scale, t),
      shape: shape.lerp(other.shape, t),
      typography: typography.lerp(other.typography, t),
      transitions: transitions.lerp(other.transitions, t),
      opacities: opacities.lerp(other.opacities, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTokens"))
      ..add(modes.toDiagnosticsNode(name: 'modes'))
      ..add(scale.toDiagnosticsNode(name: 'scale'))
      ..add(shape.toDiagnosticsNode(name: 'shape'))
      ..add(typography.toDiagnosticsNode(name: 'typography'))
      ..add(transitions.toDiagnosticsNode(name: 'transitions'))
      ..add(opacities.toDiagnosticsNode(name: 'opacities'));
  }
}
