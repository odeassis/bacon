import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseAlertSemanticTokensColors
    extends ThemeExtension<BaconBaseAlertSemanticTokensColors>
    with DiagnosticableTreeMixin {
  final Color danger;
  final Color dangerLight;
  final Color warning;
  final Color warningLight;
  final Color success;
  final Color successLight;
  final Color info;
  final Color infoLight;

  const BaconBaseAlertSemanticTokensColors({
    required this.danger,
    required this.dangerLight,
    required this.warning,
    required this.warningLight,
    required this.success,
    required this.successLight,
    required this.info,
    required this.infoLight,
  });

  @override
  BaconBaseAlertSemanticTokensColors lerp(
    BaconBaseAlertSemanticTokensColors? other,
    double t,
  ) {
    if (other is! BaconBaseAlertSemanticTokensColors) return this;
    return BaconBaseAlertSemanticTokensColors(
      danger: colorsLerp(danger, other.danger, t)!,
      dangerLight: colorsLerp(dangerLight, other.dangerLight, t)!,
      warning: colorsLerp(warning, other.warning, t)!,
      warningLight: colorsLerp(warningLight, other.warningLight, t)!,
      success: colorsLerp(success, other.success, t)!,
      successLight: colorsLerp(successLight, other.successLight, t)!,
      info: colorsLerp(info, other.info, t)!,
      infoLight: colorsLerp(infoLight, other.infoLight, t)!,
    );
  }

  @override
  BaconBaseAlertSemanticTokensColors copyWith({
    Color? danger,
    Color? dangerLight,
    Color? warning,
    Color? warningLight,
    Color? success,
    Color? successLight,
    Color? info,
    Color? infoLight,
  }) {
    return BaconBaseAlertSemanticTokensColors(
      danger: danger ?? this.danger,
      dangerLight: dangerLight ?? this.dangerLight,
      warning: warning ?? this.warning,
      warningLight: warningLight ?? this.warningLight,
      success: success ?? this.success,
      successLight: successLight ?? this.successLight,
      info: info ?? this.info,
      infoLight: infoLight ?? this.infoLight,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty("type", "BaconBaseAlertSemanticTokensColors"));
    properties.add(DiagnosticsProperty<Color>('danger', danger));
    properties.add(DiagnosticsProperty<Color>('dangerLight', dangerLight));
    properties.add(DiagnosticsProperty<Color>('warning', warning));
    properties.add(DiagnosticsProperty<Color>('warningLight', warningLight));
    properties.add(DiagnosticsProperty<Color>('success', success));
    properties.add(DiagnosticsProperty<Color>('successLight', successLight));
    properties.add(DiagnosticsProperty<Color>('info', info));
    properties.add(DiagnosticsProperty<Color>('infoLight', infoLight));
  }
}
