import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class HiveRadioProperties extends ThemeExtension<HiveRadioProperties>
    with DiagnosticableTreeMixin {
  final TextStyle textStyle;

  const HiveRadioProperties({
    required this.textStyle,
  });

  @override
  HiveRadioProperties copyWith({
    TextStyle? textStyle,
  }) {
    return HiveRadioProperties(
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  HiveRadioProperties lerp(
      ThemeExtension<HiveRadioProperties>? other, double t) {
    if (other is! HiveRadioProperties) return this;

    return HiveRadioProperties(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveRadioProperties"));
    properties.add(DiagnosticsProperty<TextStyle>("textStyle", textStyle));
  }
}
