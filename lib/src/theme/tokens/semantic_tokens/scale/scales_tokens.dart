import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'scale.dart';

@immutable
class HiveScaleTokens extends ThemeExtension<HiveScaleTokens>
    with DiagnosticableTreeMixin {
  final HiveComponentsScaleTokens component;
  final HivePaddingTokens padding;
  final HiveGapTokens gap;

  const HiveScaleTokens({
    required this.component,
    required this.padding,
    required this.gap,
  });

  @override
  HiveScaleTokens lerp(
    HiveScaleTokens? other,
    double t,
  ) {
    if (other is! HiveScaleTokens) return this;
    return HiveScaleTokens(
      component: component.lerp(other.component, t),
      padding: padding.lerp(other.padding, t),
      gap: gap.lerp(other.gap, t),
    );
  }

  @override
  HiveScaleTokens copyWith({
    HiveComponentsScaleTokens? component,
    HivePaddingTokens? padding,
    HiveGapTokens? gap,
  }) {
    return HiveScaleTokens(
      component: component ?? this.component,
      padding: padding ?? this.padding,
      gap: gap ?? this.gap,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveScaleTokens"));
    properties.add(
        DiagnosticsProperty<HiveComponentsScaleTokens>("component", component));
    properties.add(DiagnosticsProperty<HivePaddingTokens>("padding", padding));
    properties.add(DiagnosticsProperty<HiveGapTokens>("gap", gap));
  }
}
