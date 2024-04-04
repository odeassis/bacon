import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconDropdownProperties extends ThemeExtension<BaconDropdownProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final double distanceToTarget;
  final Duration transitionDuration;
  final Curve transitionCurve;
  final EdgeInsetsGeometry contentPadding;
  final EdgeInsetsGeometry dropdownMargin;
  final TextStyle textStyle;

  const BaconDropdownProperties({
    required this.borderRadius,
    required this.distanceToTarget,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.contentPadding,
    required this.dropdownMargin,
    required this.textStyle,
  });

  @override
  BaconDropdownProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? distanceToTarget,
    Duration? transitionDuration,
    Curve? transitionCurve,
    EdgeInsetsGeometry? contentPadding,
    EdgeInsetsGeometry? dropdownMargin,
    TextStyle? textStyle,
  }) {
    return BaconDropdownProperties(
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
  BaconDropdownProperties lerp(
      ThemeExtension<BaconDropdownProperties>? other, double t) {
    if (other is! BaconDropdownProperties) return this;

    return BaconDropdownProperties(
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
    properties
      ..add(DiagnosticsProperty("type", "BaconDropdownProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DoubleProperty("distanceToTarget", distanceToTarget))
      ..add(DiagnosticsProperty<Duration>(
          "transitionDuration", transitionDuration))
      ..add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>(
          "contentPadding", contentPadding))
      ..add(DiagnosticsProperty<EdgeInsetsGeometry>(
          "dropdownMargin", dropdownMargin))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
