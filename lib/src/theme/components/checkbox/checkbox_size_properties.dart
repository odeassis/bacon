import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveCheckboxSizeProperties
    extends ThemeExtension<HiveCheckboxSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final TextStyle textStyle;

  const HiveCheckboxSizeProperties({
    required this.borderRadius,
    required this.textStyle,
  });

  @override
  HiveCheckboxSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    TextStyle? textStyle,
  }) {
    return HiveCheckboxSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveCheckboxSizeProperties lerp(
      ThemeExtension<HiveCheckboxSizeProperties>? other, double t) {
    if (other is! HiveCheckboxSizeProperties) return this;

    return HiveCheckboxSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveCheckboxSizeProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
