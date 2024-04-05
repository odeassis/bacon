import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconRadioProperties extends ThemeExtension<BaconRadioProperties>
    with DiagnosticableTreeMixin {
  final TextStyle textStyle;

  const BaconRadioProperties({
    required this.textStyle,
  });

  @override
  BaconRadioProperties copyWith({
    TextStyle? textStyle,
  }) {
    return BaconRadioProperties(
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconRadioProperties lerp(
      ThemeExtension<BaconRadioProperties>? other, double t) {
    if (other is! BaconRadioProperties) return this;

    return BaconRadioProperties(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "BaconRadioProperties"))
      ..add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
