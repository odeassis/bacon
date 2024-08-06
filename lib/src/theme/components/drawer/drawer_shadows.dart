import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveDrawerShadows extends ThemeExtension<HiveDrawerShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> drawerShadows;

  const HiveDrawerShadows({
    required this.drawerShadows,
  });

  @override
  HiveDrawerShadows copyWith({List<BoxShadow>? drawerShadows}) {
    return HiveDrawerShadows(
      drawerShadows: drawerShadows ?? this.drawerShadows,
    );
  }

  @override
  HiveDrawerShadows lerp(ThemeExtension<HiveDrawerShadows>? other, double t) {
    if (other is! HiveDrawerShadows) return this;

    return HiveDrawerShadows(
      drawerShadows: BoxShadow.lerpList(drawerShadows, other.drawerShadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDrawerShadows"));
    properties.add(
        DiagnosticsProperty<List<BoxShadow>>("drawerShadows", drawerShadows));
  }
}
