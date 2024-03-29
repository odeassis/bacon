import 'package:bacon/src/theme/tokens/semantic_tokens/modes/accent/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/action/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/alert/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/modes/layers/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconSemanticTokensModes extends ThemeExtension<BaconSemanticTokensModes>
    with DiagnosticableTreeMixin {
  final BaconBaseActionSemanticTokensColors action;
  final BaconBaseAlertSemanticTokensColors alert;
  final BaconBaseLayersSemanticTokensColors background;
  final BaconBaseLayersSemanticTokensColors content;
  final BaconBaseLayersSemanticTokensColors border;
  final BaconBaseAccentSemanticTokensColors accent;

  const BaconSemanticTokensModes({
    required this.action,
    required this.alert,
    required this.background,
    required this.content,
    required this.border,
    required this.accent,
  });

  @override
  BaconSemanticTokensModes lerp(
    BaconSemanticTokensModes? other,
    double t,
  ) {
    if (other is! BaconSemanticTokensModes) return this;
    return BaconSemanticTokensModes(
      action: action.lerp(other.action, t),
      alert: alert.lerp(other.alert, t),
      background: background.lerp(other.background, t),
      content: content.lerp(other.content, t),
      border: border.lerp(other.border, t),
      accent: accent.lerp(other.accent, t),
    );
  }

  @override
  BaconSemanticTokensModes copyWith({
    BaconBaseActionSemanticTokensColors? action,
    BaconBaseAlertSemanticTokensColors? alert,
    BaconBaseLayersSemanticTokensColors? background,
    BaconBaseLayersSemanticTokensColors? content,
    BaconBaseLayersSemanticTokensColors? border,
    BaconBaseAccentSemanticTokensColors? accent,
  }) {
    return BaconSemanticTokensModes(
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
    properties.add(DiagnosticsProperty("type", "BaconSemanticTokensModes"));
    properties.add(DiagnosticsProperty<BaconBaseActionSemanticTokensColors>(
        "action", action));
    properties.add(DiagnosticsProperty<BaconBaseAlertSemanticTokensColors>(
        "alert", alert));
    properties.add(DiagnosticsProperty<BaconBaseLayersSemanticTokensColors>(
        "background", background));
    properties.add(DiagnosticsProperty<BaconBaseLayersSemanticTokensColors>(
        "content", content));
    properties.add(DiagnosticsProperty<BaconBaseLayersSemanticTokensColors>(
        "border", border));
    properties.add(DiagnosticsProperty<BaconBaseAccentSemanticTokensColors>(
        "accent", accent));
  }
}
