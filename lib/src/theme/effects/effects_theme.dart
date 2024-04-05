import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/effects/control_effect.dart';
import 'package:bacon/src/theme/effects/focus_effect.dart';
import 'package:bacon/src/theme/effects/hover_effect.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconEffectsTheme extends ThemeExtension<BaconEffectsTheme>
    with DiagnosticableTreeMixin {
  /// The tokens of the Bacon Design System.
  final BaconTokens tokens;

  /// The focus effect properties of the control widgets.
  final BaconFocusEffect controlFocusEffect;

  /// The hover effect properties of the control widgets.
  final BaconHoverEffect controlHoverEffect;

  /// The pulse effect properties of the control widgets.
  final BaconControlEffect controlPulseEffect;

  /// The scale effect properties of the control widgets.
  final BaconControlEffect controlScaleEffect;

  BaconEffectsTheme({
    required this.tokens,
    BaconFocusEffect? controlFocusEffect,
    BaconHoverEffect? controlHoverEffect,
    BaconControlEffect? controlPulseEffect,
    BaconControlEffect? controlScaleEffect,
  })  : controlFocusEffect = controlFocusEffect ??
            BaconFocusEffect(
              effectColor: tokens.modes.action.focusRingBrand,
              effectExtent: 4,
              effectDuration: tokens.transitions.transitionDuration,
              effectCurve: tokens.transitions.transitionCurve,
            ),
        controlHoverEffect = controlHoverEffect ??
            BaconHoverEffect(
              primaryHoverColor: tokens.modes.action.hoverOnColor,
              secondaryHoverColor: tokens.modes.content.secondary,
              hoverDuration: tokens.transitions.transitionDuration,
              hoverCurve: tokens.transitions.transitionCurve,
            ),
        controlPulseEffect = controlPulseEffect ??
            BaconControlEffect(
              effectColor: tokens.modes.action.focusRingBrand,
              effectDuration: const Duration(milliseconds: 1400),
              effectCurve: tokens.transitions.transitionCurve,
              effectExtent: 24,
            ),
        controlScaleEffect = controlScaleEffect ??
            BaconControlEffect(
              effectDuration: tokens.transitions.transitionDuration,
              effectCurve: tokens.transitions.transitionCurve,
              effectScalar: 0.95,
            );

  @override
  BaconEffectsTheme copyWith({
    BaconTokens? tokens,
    BaconFocusEffect? controlFocusEffect,
    BaconHoverEffect? controlHoverEffect,
    BaconControlEffect? controlPulseEffect,
    BaconControlEffect? controlScaleEffect,
  }) {
    return BaconEffectsTheme(
      tokens: tokens ?? this.tokens,
      controlFocusEffect: controlFocusEffect ?? this.controlFocusEffect,
      controlHoverEffect: controlHoverEffect ?? this.controlHoverEffect,
      controlPulseEffect: controlPulseEffect ?? this.controlPulseEffect,
      controlScaleEffect: controlScaleEffect ?? this.controlScaleEffect,
    );
  }

  @override
  BaconEffectsTheme lerp(ThemeExtension<BaconEffectsTheme>? other, double t) {
    if (other is! BaconEffectsTheme) return this;

    return BaconEffectsTheme(
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
    properties
      ..add(DiagnosticsProperty("type", "BaconEffectsTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconControlEffect>(
          "controlScaleEffect", controlScaleEffect))
      ..add(DiagnosticsProperty<BaconControlEffect>(
          "controlPulseEffect", controlPulseEffect))
      ..add(DiagnosticsProperty<BaconFocusEffect>(
          "controlFocusEffect", controlFocusEffect))
      ..add(DiagnosticsProperty<BaconHoverEffect>(
          "controlHoverEffect", controlHoverEffect));
  }
}
