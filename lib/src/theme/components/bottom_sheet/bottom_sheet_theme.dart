import 'package:bacon/src/theme/components/bottom_sheet/bottom_sheet_colors.dart';
import 'package:bacon/src/theme/components/bottom_sheet/bottom_sheet_properties.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/tokens.dart';

@immutable
class BaconBottomSheetTheme extends ThemeExtension<BaconBottomSheetTheme>
    with DiagnosticableTreeMixin {
  /// The tokens of the Bacon Design System.
  final BaconTokens tokens;

  /// The colors of the BaconBottomSheet.
  final BaconBottomSheetColors colors;

  /// The properties of the BaconBottomSheet.
  final BaconBottomSheetProperties properties;

  BaconBottomSheetTheme({
    required this.tokens,
    BaconBottomSheetColors? colors,
    BaconBottomSheetProperties? properties,
  })  : colors = colors ??
            BaconBottomSheetColors(
              textColor: tokens.modes.content.primary,
              iconColor: tokens.modes.content.secondary,
              backgroundColor: tokens.modes.background.primary,
              barrierColor: tokens.modes.background.secondary,
            ),
        properties = properties ??
            BaconBottomSheetProperties(
              borderRadius: tokens.shape.radii.surface,
              transitionDuration: const Duration(milliseconds: 350),
              transitionCurve: const Cubic(0.0, 0.0, 0.2, 1.0),
              textStyle: tokens.typography.label.md,
            );

  @override
  BaconBottomSheetTheme copyWith({
    BaconTokens? tokens,
    BaconBottomSheetColors? colors,
    BaconBottomSheetProperties? properties,
  }) {
    return BaconBottomSheetTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  BaconBottomSheetTheme lerp(
      ThemeExtension<BaconBottomSheetTheme>? other, double t) {
    if (other is! BaconBottomSheetTheme) return this;

    return BaconBottomSheetTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconBottomSheetTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconBottomSheetColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconBottomSheetProperties>(
          "properties", properties));
  }
}
