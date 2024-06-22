import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDrawerShadows extends ThemeExtension<BaconDrawerShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> drawerShadows;

  const BaconDrawerShadows({
    required this.drawerShadows,
  });

  @override
  BaconDrawerShadows copyWith({List<BoxShadow>? drawerShadows}) {
    return BaconDrawerShadows(
      drawerShadows: drawerShadows ?? this.drawerShadows,
    );
  }

  @override
  BaconDrawerShadows lerp(ThemeExtension<BaconDrawerShadows>? other, double t) {
    if (other is! BaconDrawerShadows) return this;

    return BaconDrawerShadows(
      drawerShadows: BoxShadow.lerpList(drawerShadows, other.drawerShadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconDrawerShadows"))
      ..add(
          DiagnosticsProperty<List<BoxShadow>>("drawerShadows", drawerShadows));
  }
}
