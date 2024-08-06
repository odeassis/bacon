import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveDropdownProperties extends ThemeExtension<HiveDropdownProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final double distanceToTarget;
  final Duration transitionDuration;
  final Curve transitionCurve;
  final EdgeInsetsGeometry contentPadding;
  final EdgeInsetsGeometry dropdownMargin;
  final TextStyle textStyle;

  const HiveDropdownProperties({
    required this.borderRadius,
    required this.distanceToTarget,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.contentPadding,
    required this.dropdownMargin,
    required this.textStyle,
  });

  @override
  HiveDropdownProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? distanceToTarget,
    Duration? transitionDuration,
    Curve? transitionCurve,
    EdgeInsetsGeometry? contentPadding,
    EdgeInsetsGeometry? dropdownMargin,
    TextStyle? textStyle,
  }) {
    return HiveDropdownProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      distanceToTarget: distanceToTarget ?? this.distanceToTarget,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
      contentPadding: contentPadding ?? this.contentPadding,
      dropdownMargin: dropdownMargin ?? this.dropdownMargin,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveDropdownProperties lerp(
      ThemeExtension<HiveDropdownProperties>? other, double t) {
    if (other is! HiveDropdownProperties) return this;

    return HiveDropdownProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      distanceToTarget:
          lerpDouble(distanceToTarget, other.distanceToTarget, t)!,
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      transitionCurve: other.transitionCurve,
      contentPadding:
          EdgeInsetsGeometry.lerp(contentPadding, other.contentPadding, t)!,
      dropdownMargin:
          EdgeInsetsGeometry.lerp(dropdownMargin, other.dropdownMargin, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveDropdownProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DoubleProperty("distanceToTarget", distanceToTarget));
    properties.add(DiagnosticsProperty<Duration>(
        "transitionDuration", transitionDuration));
    properties
        .add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>(
        "contentPadding", contentPadding));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>(
        "dropdownMargin", dropdownMargin));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
