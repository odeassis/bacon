import 'package:bacon/src/theme/tokens/semantic_tokens/scale/component/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/gap/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/padding/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconSemanticTokensScale extends ThemeExtension<BaconSemanticTokensScale>
    with DiagnosticableTreeMixin {
  final BaconBaseComponentsSemanticTokensScale component;
  final BaconBasePaddingSemanticTokensScale padding;
  final BaconBaseGapSemanticTokensScale gap;

  const BaconSemanticTokensScale({
    required this.component,
    required this.padding,
    required this.gap,
  });

  @override
  BaconSemanticTokensScale lerp(
    BaconSemanticTokensScale? other,
    double t,
  ) {
    if (other is! BaconSemanticTokensScale) return this;
    return BaconSemanticTokensScale(
      component: component.lerp(other.component, t),
      padding: padding.lerp(other.padding, t),
      gap: gap.lerp(other.gap, t),
    );
  }

  @override
  BaconSemanticTokensScale copyWith({
    BaconBaseComponentsSemanticTokensScale? component,
    BaconBasePaddingSemanticTokensScale? padding,
    BaconBaseGapSemanticTokensScale? gap,
  }) {
    return BaconSemanticTokensScale(
      component: component ?? this.component,
      padding: padding ?? this.padding,
      gap: gap ?? this.gap,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconSemanticTokensScale"));
    properties.add(DiagnosticsProperty<BaconBaseComponentsSemanticTokensScale>(
        "component", component));
    properties.add(DiagnosticsProperty<BaconBasePaddingSemanticTokensScale>(
        "padding", padding));
    properties
        .add(DiagnosticsProperty<BaconBaseGapSemanticTokensScale>("gap", gap));
  }
}
