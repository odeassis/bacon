import 'package:bacon/src/theme/components/text_input/input_colors.dart';
import 'package:bacon/src/theme/components/text_input/input_properties.dart';
import 'package:bacon/src/theme/components/text_input/input_sizes.dart';
import 'package:bacon/src/theme/tokens/tokens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconTextInputTheme extends ThemeExtension<BaconTextInputTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconTextInputColors colors;
  final BaconTextInputProperties properties;
  final BaconTextInputSizes sizes;

  BaconTextInputTheme({
    required this.tokens,
    BaconTextInputColors? colors,
    BaconTextInputProperties? properties,
    BaconTextInputSizes? sizes,
  })  : colors = colors ??
            BaconTextInputColors(
              background: tokens.modes.background.primary,
              activeBorderColor: tokens.modes.action.active,
              inactiveBorderColor: tokens.modes.border.primary,
              errorColor: tokens.modes.alert.danger,
              hoverBorderColor: tokens.modes.action.hoverOnColor,
              textColor: tokens.modes.content.primary,
              helperTextColor: tokens.modes.content.tertiary,
              focusRing: tokens.modes.action.focusRingBrand,
            ),
        properties = properties ??
            BaconTextInputProperties(
              transitionDuration: const Duration(milliseconds: 167),
              transitionCurve: Curves.fastOutSlowIn,
              helperPadding: EdgeInsets.only(top: tokens.scale.padding.xs),
              helperTextStyle: tokens.typography.paragraph.xs,
            ),
        sizes = sizes ?? BaconTextInputSizes(tokens: tokens);

  @override
  BaconTextInputTheme copyWith({
    BaconTokens? tokens,
    BaconTextInputColors? colors,
    BaconTextInputProperties? properties,
    BaconTextInputSizes? sizes,
  }) {
    return BaconTextInputTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  BaconTextInputTheme lerp(
      ThemeExtension<BaconTextInputTheme>? other, double t) {
    if (other is! BaconTextInputTheme) return this;

    return BaconTextInputTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "BaconTextInputTheme"))
      ..add(DiagnosticsProperty<BaconTokens>("tokens", tokens))
      ..add(DiagnosticsProperty<BaconTextInputColors>("colors", colors))
      ..add(DiagnosticsProperty<BaconTextInputProperties>(
          "properties", properties))
      ..add(DiagnosticsProperty<BaconTextInputSizes>("sizes", sizes));
  }
}
