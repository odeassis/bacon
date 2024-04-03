import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTextInputProperties extends ThemeExtension<BaconTextInputProperties>
    with DiagnosticableTreeMixin {
  final Curve transitionCurve;
  final Duration transitionDuration;
  final TextStyle helperTextStyle;
  final EdgeInsetsGeometry helperPadding;

  const BaconTextInputProperties({
    required this.transitionCurve,
    required this.transitionDuration,
    required this.helperTextStyle,
    required this.helperPadding,
  });

  @override
  BaconTextInputProperties copyWith({
    Curve? transitionCurve,
    Duration? transitionDuration,
    TextStyle? helperTextStyle,
    EdgeInsetsGeometry? helperPadding,
  }) {
    return BaconTextInputProperties(
      transitionCurve: transitionCurve ?? this.transitionCurve,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      helperTextStyle: helperTextStyle ?? this.helperTextStyle,
      helperPadding: helperPadding ?? this.helperPadding,
    );
  }

  @override
  BaconTextInputProperties lerp(
      ThemeExtension<BaconTextInputProperties>? other, double t) {
    if (other is! BaconTextInputProperties) return this;
    return BaconTextInputProperties(
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
    properties.add(DiagnosticsProperty('type', 'BaconTextInputProperties'));
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
