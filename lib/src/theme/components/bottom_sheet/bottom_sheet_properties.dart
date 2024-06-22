import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBottomSheetProperties
    extends ThemeExtension<BaconBottomSheetProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the BaconBottomSheet.
  final BorderRadiusGeometry borderRadius;

  /// The duration of the BaconBottomSheet transition animation (slide in or out).
  final Duration transitionDuration;

  /// The curve of the BaconBottomSheet transition animation (slide in or out).
  final Curve transitionCurve;

  /// The text style of the BaconBottomSheet.
  final TextStyle textStyle;

  const BaconBottomSheetProperties({
    required this.borderRadius,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.textStyle,
  });

  @override
  BaconBottomSheetProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    Duration? transitionDuration,
    Curve? transitionCurve,
    TextStyle? textStyle,
  }) {
    return BaconBottomSheetProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconBottomSheetProperties lerp(
      ThemeExtension<BaconBottomSheetProperties>? other, double t) {
    if (other is! BaconBottomSheetProperties) return this;

    return BaconBottomSheetProperties(
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
      ..add(DiagnosticsProperty("type", "BaconBottomSheetProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DiagnosticsProperty<Duration>(
          "transitionDuration", transitionDuration))
      ..add(DiagnosticsProperty<Curve>("transitionCurve", transitionCurve))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
