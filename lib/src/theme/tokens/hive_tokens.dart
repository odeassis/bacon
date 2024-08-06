import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'tokens.dart';

class HiveTokens extends ThemeExtension<HiveTokens>
    with DiagnosticableTreeMixin {
  static final HiveTokens light = HiveTokens._create(
    HiveColors.light(),
    HiveShadows.light,
  );

  static final HiveTokens dark = HiveTokens._create(
    HiveColors.dark(),
    HiveShadows.dark,
  );

  final HiveModeTokens modes;
  final HiveScaleTokens scale;
  final HiveShapeTokens shape;
  final HiveTypographyTokens typography;
  final HiveTransitions transitions;
  final HiveOpacities opacities;
  final HiveShadows shadows;

  HiveTokens._({
    required this.modes,
    required this.scale,
    required this.shape,
    required this.typography,
    required this.transitions,
    required this.opacities,
    required this.shadows,
  });

  factory HiveTokens._create(
    HiveColors primitiveColors,
    HiveShadows shadows,
  ) {
    return HiveTokens._(
      modes: HiveMode.colors(primitives: primitiveColors),
      scale: HiveScale(),
      shape: HiveShape(),
      typography: HiveTypographyTokens(
        display: HiveTypography.display,
        headline: HiveTypography.headline,
        paragraph: HiveTypography.paragraph,
        label: HiveTypography.label,
        link: HiveTypography.link,
      ),
      transitions: HiveTransitions.transitions,
      opacities: HiveOpacities.opacities,
      shadows: shadows,
    );
  }

  @override
  HiveTokens copyWith({
    HiveModeTokens? modes,
    HiveScaleTokens? scale,
    HiveShapeTokens? shape,
    HiveTypographyTokens? typography,
    HiveTransitions? transitions,
    HiveOpacities? opacities,
    HiveShadows? shadows,
  }) {
    return HiveTokens._(
      modes: modes ?? this.modes,
      scale: scale ?? this.scale,
      shape: shape ?? this.shape,
      typography: typography ?? this.typography,
      transitions: transitions ?? this.transitions,
      opacities: opacities ?? this.opacities,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  HiveTokens lerp(ThemeExtension<HiveTokens>? other, double t) {
    if (other is! HiveTokens) return this;
    return HiveTokens._(
      modes: modes.lerp(other.modes, t),
      scale: scale.lerp(other.scale, t),
      shape: shape.lerp(other.shape, t),
      typography: typography.lerp(other.typography, t),
      transitions: transitions.lerp(other.transitions, t),
      opacities: opacities.lerp(other.opacities, t),
      shadows: shadows.lerp(other.shadows, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTokens"));
    properties.add(modes.toDiagnosticsNode(name: 'modes'));
    properties.add(scale.toDiagnosticsNode(name: 'scale'));
    properties.add(shape.toDiagnosticsNode(name: 'shape'));
    properties.add(typography.toDiagnosticsNode(name: 'typography'));
    properties.add(transitions.toDiagnosticsNode(name: 'transitions'));
    properties.add(opacities.toDiagnosticsNode(name: 'opacities'));
    properties.add(shadows.toDiagnosticsNode(name: 'shadows'));
  }
}
