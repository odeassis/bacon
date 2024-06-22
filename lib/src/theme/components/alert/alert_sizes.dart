import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/alert/alert_properties.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconAlertSizes extends ThemeExtension<BaconAlertSizes>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;

  // Alert with size large
  final BaconAlertProperties lg;

  // Alert with size medium
  final BaconAlertProperties md;

  // Alert with size small
  final BaconAlertProperties sm;

  BaconAlertSizes({
    required this.tokens,
    BaconAlertProperties? lg,
    BaconAlertProperties? md,
    BaconAlertProperties? sm,
  })  : lg = lg ??
            BaconAlertProperties(
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
            BaconAlertProperties(
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
            BaconAlertProperties(
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
  BaconAlertSizes copyWith({
    BaconAlertProperties? lg,
    BaconAlertProperties? md,
  }) {
    return BaconAlertSizes(
      tokens: tokens,
      lg: lg ?? this.lg,
      md: md ?? this.md,
    );
  }

  @override
  BaconAlertSizes lerp(ThemeExtension<BaconAlertSizes>? other, double t) {
    if (other is! BaconAlertSizes) return this;
    return BaconAlertSizes(
      tokens: tokens,
      lg: lg.lerp(other.lg, t),
      md: md.lerp(other.md, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAlertSizes"));
    properties.add(DiagnosticsProperty<BaconTokens>('tokens', tokens));
    properties.add(DiagnosticsProperty<BaconAlertProperties>('lg', lg));
    properties.add(DiagnosticsProperty<BaconAlertProperties>('md', md));
  }
}
