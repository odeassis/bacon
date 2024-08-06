import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'modes.dart';

@immutable
class HiveModeTokens extends ThemeExtension<HiveModeTokens>
    with DiagnosticableTreeMixin {
  final HiveActionColorsTokens action;
  final HiveAlertColorsTokens alert;
  final HiveLayersColorsTokens background;
  final HiveLayersColorsTokens content;
  final HiveLayersColorsTokens border;
  final HiveAccentColorsTokens accent;

  const HiveModeTokens({
    required this.action,
    required this.alert,
    required this.background,
    required this.content,
    required this.border,
    required this.accent,
  });

  @override
  HiveModeTokens lerp(
    HiveModeTokens? other,
    double t,
  ) {
    if (other is! HiveModeTokens) return this;
    return HiveModeTokens(
      action: action.lerp(other.action, t),
      alert: alert.lerp(other.alert, t),
      background: background.lerp(other.background, t),
      content: content.lerp(other.content, t),
      border: border.lerp(other.border, t),
      accent: accent.lerp(other.accent, t),
    );
  }

  @override
  HiveModeTokens copyWith({
    HiveActionColors? action,
    HiveAlertColors? alert,
    HiveBackground? background,
    HiveContentColors? content,
    HiveBorderColors? border,
    HiveAccentColors? accent,
  }) {
    return HiveModeTokens(
      action: action ?? this.action,
      alert: alert ?? this.alert,
      background: background ?? this.background,
      content: content ?? this.content,
      border: border ?? this.border,
      accent: accent ?? this.accent,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveModeTokens"));
    properties
        .add(DiagnosticsProperty<HiveActionColorsTokens>("action", action));
    properties.add(DiagnosticsProperty<HiveAlertColorsTokens>("alert", alert));
    properties.add(
        DiagnosticsProperty<HiveLayersColorsTokens>("background", background));
    properties
        .add(DiagnosticsProperty<HiveLayersColorsTokens>("content", content));
    properties
        .add(DiagnosticsProperty<HiveLayersColorsTokens>("border", border));
    properties
        .add(DiagnosticsProperty<HiveAccentColorsTokens>("accent", accent));
  }
}
