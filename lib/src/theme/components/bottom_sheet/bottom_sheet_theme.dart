import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';
import 'bottom_sheet_colors.dart';
import 'bottom_sheet_properties.dart';

@immutable
class HiveBottomSheetTheme extends ThemeExtension<HiveBottomSheetTheme>
    with DiagnosticableTreeMixin {
  /// The tokens of the Hive Design System.
  final HiveTokens tokens;

  /// The colors of the HiveBottomSheet.
  final HiveBottomSheetColors colors;

  /// The properties of the HiveBottomSheet.
  final HiveBottomSheetProperties properties;

  HiveBottomSheetTheme({
    required this.tokens,
    HiveBottomSheetColors? colors,
    HiveBottomSheetProperties? properties,
  })  : colors = colors ??
            HiveBottomSheetColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.secondary,
              backgroundColor: tokens.modes.background.primary,
              barrierColor: tokens.modes.background.secondary,
            ),
        properties = properties ??
            HiveBottomSheetProperties(
              borderRadius: tokens.shape.radii.surface,
              transitionDuration: const Duration(milliseconds: 350),
              transitionCurve: const Cubic(0.0, 0.0, 0.2, 1.0),
              textStyle: tokens.typography.label.md,
            );

  @override
  HiveBottomSheetTheme copyWith({
    HiveTokens? tokens,
    HiveBottomSheetColors? colors,
    HiveBottomSheetProperties? properties,
  }) {
    return HiveBottomSheetTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  HiveBottomSheetTheme lerp(
      ThemeExtension<HiveBottomSheetTheme>? other, double t) {
    if (other is! HiveBottomSheetTheme) return this;

    return HiveBottomSheetTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
        .add(DiagnosticsProperty("type", "HiveBottomSheetTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveBottomSheetColors>("colors", colors));
  }
}
