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

  // Alert with size small
  final BaconAlertProperties sm;

  BaconAlertSizes({
    required this.tokens,
    BaconAlertProperties? lg,
    BaconAlertProperties? sm,
  })  : lg = lg ??
            BaconAlertProperties(
              titleTextStyle: tokens.typography.label.xs,
              bodyTitleStyle: tokens.typography.paragraph.xs,
              minHeight: tokens.scale.component.x3l,
              borderRadius: tokens.shape.borderRadius.surface,
              hGap: tokens.scale.padding.sm,
              vGap: tokens.scale.padding.sm,
              padding: EdgeInsets.all(tokens.scale.padding.sm),
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
              iconSize: tokens.scale.component.lg,
            ),
        sm = sm ??
            BaconAlertProperties(
              titleTextStyle: tokens.typography.label.xs,
              bodyTitleStyle: tokens.typography.paragraph.xs,
              minHeight: tokens.scale.component.x2l,
              borderRadius: tokens.shape.borderRadius.surface,
              hGap: tokens.scale.padding.xs,
              vGap: tokens.scale.padding.xs,
              padding: EdgeInsets.all(tokens.scale.padding.xs),
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
              iconSize: tokens.scale.component.md,
            );

  @override
  BaconAlertSizes copyWith({
    BaconAlertProperties? lg,
    BaconAlertProperties? sm,
  }) {
    return BaconAlertSizes(
      tokens: tokens,
      lg: lg ?? this.lg,
      sm: sm ?? this.sm,
    );
  }

  @override
  BaconAlertSizes lerp(ThemeExtension<BaconAlertSizes>? other, double t) {
    if (other is! BaconAlertSizes) return this;
    return BaconAlertSizes(
      tokens: tokens,
      lg: lg.lerp(other.lg, t),
      sm: sm.lerp(other.sm, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAlertSizes"));
    properties.add(DiagnosticsProperty<BaconTokens>('tokens', tokens));
    properties.add(DiagnosticsProperty<BaconAlertProperties>('lg', lg));
    properties.add(DiagnosticsProperty<BaconAlertProperties>('sm', sm));
  }
}
