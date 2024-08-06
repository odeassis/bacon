import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveDropdownShadows extends ThemeExtension<HiveDropdownShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> dropdownShadows;

  const HiveDropdownShadows({
    required this.dropdownShadows,
  });

  @override
  HiveDropdownShadows copyWith({List<BoxShadow>? dropdownShadows}) {
    return HiveDropdownShadows(
      dropdownShadows: dropdownShadows ?? this.dropdownShadows,
    );
  }

  @override
  HiveDropdownShadows lerp(
      ThemeExtension<HiveDropdownShadows>? other, double t) {
    if (other is! HiveDropdownShadows) return this;

    return HiveDropdownShadows(
      dropdownShadows:
          BoxShadow.lerpList(dropdownShadows, other.dropdownShadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDropdownShadows"));
    properties.add(DiagnosticsProperty<List<BoxShadow>>(
        "dropdownShadows", dropdownShadows));
  }
}
