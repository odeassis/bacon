import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTooltipShadows extends ThemeExtension<BaconTooltipShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> tooltipShadows;

  const BaconTooltipShadows({
    required this.tooltipShadows,
  });

  @override
  BaconTooltipShadows copyWith({List<BoxShadow>? tooltipShadows}) {
    return BaconTooltipShadows(
      tooltipShadows: tooltipShadows ?? this.tooltipShadows,
    );
  }

  @override
  BaconTooltipShadows lerp(
      ThemeExtension<BaconTooltipShadows>? other, double t) {
    if (other is! BaconTooltipShadows) return this;

    return BaconTooltipShadows(
      tooltipShadows:
          BoxShadow.lerpList(tooltipShadows, other.tooltipShadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconTooltipShadows"))
      ..add(DiagnosticsProperty<List<BoxShadow>>(
          "tooltipShadows", tooltipShadows));
  }
}
