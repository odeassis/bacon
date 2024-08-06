import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart' as utils;

@immutable
class HiveAlertColorsTokens extends ThemeExtension<HiveAlertColorsTokens>
    with DiagnosticableTreeMixin {
  final Color danger;
  final Color dangerLight;
  final Color warning;
  final Color warningLight;
  final Color success;
  final Color successLight;
  final Color info;
  final Color infoLight;

  const HiveAlertColorsTokens({
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
  HiveAlertColorsTokens lerp(
    HiveAlertColorsTokens? other,
    double t,
  ) {
    if (other is! HiveAlertColorsTokens) return this;
    return HiveAlertColorsTokens(
      danger: utils.colorsLerp(danger, other.danger, t)!,
      dangerLight: utils.colorsLerp(dangerLight, other.dangerLight, t)!,
      warning: utils.colorsLerp(warning, other.warning, t)!,
      warningLight: utils.colorsLerp(warningLight, other.warningLight, t)!,
      success: utils.colorsLerp(success, other.success, t)!,
      successLight: utils.colorsLerp(successLight, other.successLight, t)!,
      info: utils.colorsLerp(info, other.info, t)!,
      infoLight: utils.colorsLerp(infoLight, other.infoLight, t)!,
    );
  }

  @override
  HiveAlertColorsTokens copyWith({
    Color? danger,
    Color? dangerLight,
    Color? warning,
    Color? warningLight,
    Color? success,
    Color? successLight,
    Color? info,
    Color? infoLight,
  }) {
    return HiveAlertColorsTokens(
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
    properties.add(DiagnosticsProperty("type", "HiveAlertColorsTokens"));
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
