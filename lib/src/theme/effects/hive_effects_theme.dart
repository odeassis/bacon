import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../tokens/tokens.dart';
import 'effects.dart';

@immutable
class HiveEffectsTheme extends ThemeExtension<HiveEffectsTheme>
    with DiagnosticableTreeMixin {
  /// The tokens of the Bacon Design System.
  final HiveTokens tokens;

  /// The focus effect properties of the control widgets.
  final HiveFocusEffectTheme controlFocusEffect;

  /// The hover effect properties of the control widgets.
  final HiveHoverEffectTheme controlHoverEffect;

  /// The pulse effect properties of the control widgets.
  final HiveControlEffectTheme controlPulseEffect;

  /// The scale effect properties of the control widgets.
  final HiveControlEffectTheme controlScaleEffect;

  HiveEffectsTheme({
    required this.tokens,
    HiveFocusEffectTheme? controlFocusEffect,
    HiveHoverEffectTheme? controlHoverEffect,
    HiveControlEffectTheme? controlPulseEffect,
    HiveControlEffectTheme? controlScaleEffect,
  })  : controlFocusEffect = controlFocusEffect ??
            HiveFocusEffectTheme(
              effectColor: tokens.modes.action.focusRingBrand,
              effectExtent: 4,
              effectDuration: tokens.transitions.transitionDuration,
              effectCurve: tokens.transitions.transitionCurve,
            ),
        controlHoverEffect = controlHoverEffect ??
            HiveHoverEffectTheme(
              primaryHoverColor: tokens.modes.action.hoverOnColor,
              secondaryHoverColor: tokens.modes.content.secondary,
              hoverDuration: tokens.transitions.transitionDuration,
              hoverCurve: tokens.transitions.transitionCurve,
            ),
        controlPulseEffect = controlPulseEffect ??
            HiveControlEffectTheme(
              effectColor: tokens.modes.action.focusRingBrand,
              effectDuration: const Duration(milliseconds: 1400),
              effectCurve: tokens.transitions.transitionCurve,
              effectExtent: 24,
            ),
        controlScaleEffect = controlScaleEffect ??
            HiveControlEffectTheme(
              effectDuration: tokens.transitions.transitionDuration,
              effectCurve: tokens.transitions.transitionCurve,
              effectScalar: 0.95,
            );

  @override
  HiveEffectsTheme copyWith({
    HiveTokens? tokens,
    HiveFocusEffectTheme? controlFocusEffect,
    HiveHoverEffectTheme? controlHoverEffect,
    HiveControlEffectTheme? controlPulseEffect,
    HiveControlEffectTheme? controlScaleEffect,
  }) {
    return HiveEffectsTheme(
      tokens: tokens ?? this.tokens,
      controlFocusEffect: controlFocusEffect ?? this.controlFocusEffect,
      controlHoverEffect: controlHoverEffect ?? this.controlHoverEffect,
      controlPulseEffect: controlPulseEffect ?? this.controlPulseEffect,
      controlScaleEffect: controlScaleEffect ?? this.controlScaleEffect,
    );
  }

  @override
  HiveEffectsTheme lerp(ThemeExtension<HiveEffectsTheme>? other, double t) {
    if (other is! HiveEffectsTheme) return this;

    return HiveEffectsTheme(
      tokens: tokens.lerp(other.tokens, t),
      controlFocusEffect: controlFocusEffect.lerp(other.controlFocusEffect, t),
      controlHoverEffect: controlHoverEffect.lerp(other.controlHoverEffect, t),
      controlScaleEffect: controlScaleEffect.lerp(other.controlScaleEffect, t),
      controlPulseEffect: controlPulseEffect.lerp(other.controlPulseEffect, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveEffectsTheme"));
    properties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    properties.add(DiagnosticsProperty<HiveControlEffectTheme>(
        "controlScaleEffect", controlScaleEffect));
    properties.add(DiagnosticsProperty<HiveControlEffectTheme>(
        "controlPulseEffect", controlPulseEffect));
    properties.add(DiagnosticsProperty<HiveFocusEffectTheme>(
        "controlFocusEffect", controlFocusEffect));
    properties.add(DiagnosticsProperty<HiveHoverEffectTheme>(
        "controlHoverEffect", controlHoverEffect));
  }
}
