import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveBottomSheetProperties
    extends ThemeExtension<HiveBottomSheetProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the BaconBottomSheet.
  final BorderRadiusGeometry borderRadius;

  /// The duration of the BaconBottomSheet transition animation (slide in or out).
  final Duration transitionDuration;

  /// The curve of the BaconBottomSheet transition animation (slide in or out).
  final Curve transitionCurve;

  /// The text style of the BaconBottomSheet.
  final TextStyle textStyle;

  const HiveBottomSheetProperties({
    required this.borderRadius,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.textStyle,
  });

  @override
  HiveBottomSheetProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    Duration? transitionDuration,
    Curve? transitionCurve,
    TextStyle? textStyle,
  }) {
    return HiveBottomSheetProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveBottomSheetProperties lerp(
      ThemeExtension<HiveBottomSheetProperties>? other, double t) {
    if (other is! HiveBottomSheetProperties) return this;

    return HiveBottomSheetProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      transitionDuration:
          lerpDuration(transitionDuration, other.transitionDuration, t),
      transitionCurve: other.transitionCurve,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "HiveBottomSheetProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DiagnosticsProperty<Duration>(
          "transitionDuration", transitionDuration))
      ..add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
