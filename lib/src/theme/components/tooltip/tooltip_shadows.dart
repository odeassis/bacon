import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveTooltipShadows extends ThemeExtension<HiveTooltipShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> tooltipShadows;

  const HiveTooltipShadows({
    required this.tooltipShadows,
  });

  @override
  HiveTooltipShadows copyWith({List<BoxShadow>? tooltipShadows}) {
    return HiveTooltipShadows(
      tooltipShadows: tooltipShadows ?? this.tooltipShadows,
    );
  }

  @override
  HiveTooltipShadows lerp(ThemeExtension<HiveTooltipShadows>? other, double t) {
    if (other is! HiveTooltipShadows) return this;

    return HiveTooltipShadows(
      tooltipShadows:
          BoxShadow.lerpList(tooltipShadows, other.tooltipShadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTooltipShadows"));
    properties.add(
        DiagnosticsProperty<List<BoxShadow>>("tooltipShadows", tooltipShadows));
  }
}
