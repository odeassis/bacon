import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveTextInputProperties extends ThemeExtension<HiveTextInputProperties>
    with DiagnosticableTreeMixin {
  final Curve transitionCurve;
  final Duration transitionDuration;
  final TextStyle helperTextStyle;
  final EdgeInsetsGeometry helperPadding;

  const HiveTextInputProperties({
    required this.transitionCurve,
    required this.transitionDuration,
    required this.helperTextStyle,
    required this.helperPadding,
  });

  @override
  HiveTextInputProperties copyWith({
    Curve? transitionCurve,
    Duration? transitionDuration,
    TextStyle? helperTextStyle,
    EdgeInsetsGeometry? helperPadding,
  }) {
    return HiveTextInputProperties(
      transitionCurve: transitionCurve ?? this.transitionCurve,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      helperTextStyle: helperTextStyle ?? this.helperTextStyle,
      helperPadding: helperPadding ?? this.helperPadding,
    );
  }

  @override
  HiveTextInputProperties lerp(
      ThemeExtension<HiveTextInputProperties>? other, double t) {
    if (other is! HiveTextInputProperties) return this;
    return HiveTextInputProperties(
      transitionCurve: other.transitionCurve,
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      helperTextStyle:
          TextStyle.lerp(helperTextStyle, other.helperTextStyle, t)!,
      helperPadding:
          EdgeInsetsGeometry.lerp(helperPadding, other.helperPadding, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HiveTextInputProperties'));
    properties
        .add(DiagnosticsProperty<Curve>('transitionCurve', transitionCurve));
    properties.add(DiagnosticsProperty<Duration>(
        'transitionDuration', transitionDuration));
    properties.add(
        DiagnosticsProperty<TextStyle>('helperTextStyle', helperTextStyle));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>(
        'helperPadding', helperPadding));
  }
}
