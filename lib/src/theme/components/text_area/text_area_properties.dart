import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveTextAreaProperties extends ThemeExtension<HiveTextAreaProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  final Duration transitionDuration;

  final Curve transitionCurve;

  final EdgeInsetsGeometry helperPadding;

  final EdgeInsetsGeometry textPadding;

  final TextStyle textStyle;

  final TextStyle helperTextStyle;

  const HiveTextAreaProperties({
    required this.borderRadius,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.helperPadding,
    required this.textPadding,
    required this.textStyle,
    required this.helperTextStyle,
  });

  @override
  HiveTextAreaProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    Duration? transitionDuration,
    Curve? transitionCurve,
    EdgeInsetsGeometry? helperPadding,
    EdgeInsetsGeometry? textPadding,
    TextStyle? textStyle,
    TextStyle? helperTextStyle,
  }) {
    return HiveTextAreaProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
      helperPadding: helperPadding ?? this.helperPadding,
      textPadding: textPadding ?? this.textPadding,
      textStyle: textStyle ?? this.textStyle,
      helperTextStyle: helperTextStyle ?? this.helperTextStyle,
    );
  }

  @override
  HiveTextAreaProperties lerp(
      ThemeExtension<HiveTextAreaProperties>? other, double t) {
    if (other is! HiveTextAreaProperties) return this;

    return HiveTextAreaProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      transitionCurve: other.transitionCurve,
      helperPadding:
          EdgeInsetsGeometry.lerp(helperPadding, other.helperPadding, t)!,
      textPadding: EdgeInsetsGeometry.lerp(textPadding, other.textPadding, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
      helperTextStyle:
          TextStyle.lerp(helperTextStyle, other.helperTextStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveTextAreaProperties"));
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        "borderRadius", borderRadius));
    properties.add(DiagnosticsProperty<Duration>(
        "transitionDuration", transitionDuration));
    properties
        .add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>(
        "helperPadding", helperPadding));
    properties.add(
        DiagnosticsProperty<EdgeInsetsGeometry>("textPadding", textPadding));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
    properties.add(
        DiagnosticsProperty<TextStyle>("helperTextStyle", helperTextStyle));
  }
}
