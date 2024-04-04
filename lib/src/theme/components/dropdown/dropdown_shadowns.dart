import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDropdownShadows extends ThemeExtension<BaconDropdownShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> dropdownShadows;

  const BaconDropdownShadows({
    required this.dropdownShadows,
  });

  @override
  BaconDropdownShadows copyWith({List<BoxShadow>? dropdownShadows}) {
    return BaconDropdownShadows(
      dropdownShadows: dropdownShadows ?? this.dropdownShadows,
    );
  }

  @override
  BaconDropdownShadows lerp(
      ThemeExtension<BaconDropdownShadows>? other, double t) {
    if (other is! BaconDropdownShadows) return this;

    return BaconDropdownShadows(
      dropdownShadows:
          BoxShadow.lerpList(dropdownShadows, other.dropdownShadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconDropdownShadows"))
      ..add(DiagnosticsProperty<List<BoxShadow>>(
          "dropdownShadows", dropdownShadows));
  }
}
