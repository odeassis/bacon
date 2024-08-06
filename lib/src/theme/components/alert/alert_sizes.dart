import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'alert_properties.dart';

@immutable
class HiveAlertSizes extends ThemeExtension<HiveAlertSizes>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;

  // Alert with size large
  final HiveAlertProperties lg;

  // Alert with size medium
  final HiveAlertProperties md;

  // Alert with size small
  final HiveAlertProperties sm;

  HiveAlertSizes({
    required this.tokens,
    HiveAlertProperties? lg,
    HiveAlertProperties? md,
    HiveAlertProperties? sm,
  })  : lg = lg ??
            HiveAlertProperties(
              iconSize: tokens.scale.component.xs,
              minHeight: tokens.scale.component.x3l,
              hGap: tokens.scale.padding.sm,
              vGap: tokens.scale.padding.x2s,
              padding: EdgeInsets.all(tokens.scale.padding.sm),
              titleTextStyle: tokens.typography.label.sm,
              bodyTitleStyle: tokens.typography.paragraph.sm,
              linkTextStyle: tokens.typography.link.sm,
              borderRadius: tokens.shape.radii.surface,
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
            ),
        md = md ??
            HiveAlertProperties(
              iconSize: tokens.scale.component.x2s,
              minHeight: tokens.scale.component.md,
              hGap: tokens.scale.padding.xs,
              vGap: tokens.scale.padding.xs,
              padding: EdgeInsets.all(tokens.scale.padding.xs),
              titleTextStyle: tokens.typography.label.xs,
              bodyTitleStyle: tokens.typography.paragraph.xs,
              linkTextStyle: tokens.typography.link.sm,
              borderRadius: tokens.shape.radii.surface,
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
            ),
        sm = sm ??
            HiveAlertProperties(
              iconSize: tokens.scale.component.x2s,
              minHeight: tokens.scale.component.md,
              hGap: tokens.scale.padding.xs,
              vGap: tokens.scale.padding.xs,
              padding: EdgeInsets.all(tokens.scale.padding.xs),
              titleTextStyle: tokens.typography.label.xs,
              bodyTitleStyle: tokens.typography.paragraph.xs,
              linkTextStyle: tokens.typography.link.sm,
              borderRadius: tokens.shape.radii.surface,
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
            );

  @override
  HiveAlertSizes copyWith({
    HiveAlertProperties? lg,
    HiveAlertProperties? md,
  }) {
    return HiveAlertSizes(
      tokens: tokens,
      lg: lg ?? this.lg,
      md: md ?? this.md,
    );
  }

  @override
  HiveAlertSizes lerp(ThemeExtension<HiveAlertSizes>? other, double t) {
    if (other is! HiveAlertSizes) return this;
    return HiveAlertSizes(
      tokens: tokens,
      lg: lg.lerp(other.lg, t),
      md: md.lerp(other.md, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAlertSizes"));
    properties.add(DiagnosticsProperty<HiveTokens>('tokens', tokens));
    properties.add(DiagnosticsProperty<HiveAlertProperties>('lg', lg));
    properties.add(DiagnosticsProperty<HiveAlertProperties>('md', md));
  }
}
