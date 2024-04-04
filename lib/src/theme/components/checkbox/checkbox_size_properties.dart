import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconCheckboxSizeProperties
    extends ThemeExtension<BaconCheckboxSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final TextStyle textStyle;

  const BaconCheckboxSizeProperties({
    required this.borderRadius,
    required this.textStyle,
  });

  @override
  BaconCheckboxSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    TextStyle? textStyle,
  }) {
    return BaconCheckboxSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconCheckboxSizeProperties lerp(
      ThemeExtension<BaconCheckboxSizeProperties>? other, double t) {
    if (other is! BaconCheckboxSizeProperties) return this;

    return BaconCheckboxSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconCheckboxSizeProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
