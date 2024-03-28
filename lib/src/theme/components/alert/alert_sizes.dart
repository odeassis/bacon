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
              minHeight: tokens.componentScale.xxxl,
              borderRadius: tokens.borderRadius.surface,
              hGap: tokens.paddingScale.sm,
              vGap: tokens.paddingScale.sm,
              padding: EdgeInsets.all(tokens.paddingScale.sm),
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
              iconSize: tokens.iconScale.lg,
            ),
        sm = sm ??
            BaconAlertProperties(
              titleTextStyle: tokens.typography.label.xs,
              bodyTitleStyle: tokens.typography.paragraph.xs,
              minHeight: tokens.componentScale.xxl,
              borderRadius: tokens.borderRadius.surface,
              hGap: tokens.paddingScale.xs,
              vGap: tokens.paddingScale.xs,
              padding: EdgeInsets.all(tokens.paddingScale.xs),
              duration: tokens.transitions.transitionDuration,
              curve: tokens.transitions.transitionCurve,
              iconSize: tokens.iconScale.md,
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
