import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../tokens/hive_tokens.dart';
import 'input_colors.dart';
import 'input_properties.dart';
import 'input_sizes.dart';

@immutable
class HiveTextInputTheme extends ThemeExtension<HiveTextInputTheme>
    with DiagnosticableTreeMixin {
  final HiveTokens tokens;
  final HiveTextInputColors colors;
  final HiveTextInputProperties properties;
  final HiveTextInputSizes sizes;

  HiveTextInputTheme({
    required this.tokens,
    HiveTextInputColors? colors,
    HiveTextInputProperties? properties,
    HiveTextInputSizes? sizes,
  })  : colors = colors ??
            HiveTextInputColors(
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
            HiveTextInputProperties(
              transitionDuration: const Duration(milliseconds: 167),
              transitionCurve: Curves.fastOutSlowIn,
              helperPadding: EdgeInsets.only(top: tokens.scale.padding.xs),
              helperTextStyle: tokens.typography.paragraph.xs,
            ),
        sizes = sizes ?? HiveTextInputSizes(tokens: tokens);

  @override
  HiveTextInputTheme copyWith({
    HiveTokens? tokens,
    HiveTextInputColors? colors,
    HiveTextInputProperties? properties,
    HiveTextInputSizes? sizes,
  }) {
    return HiveTextInputTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      sizes: sizes ?? this.sizes,
    );
  }

  @override
  HiveTextInputTheme lerp(ThemeExtension<HiveTextInputTheme>? other, double t) {
    if (other is! HiveTextInputTheme) return this;

    return HiveTextInputTheme(
      tokens: tokens.lerp(other.tokens, t),
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
      sizes: sizes.lerp(other.sizes, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties.add(DiagnosticsProperty("type", "HiveTextInputTheme"));
    diagnosticProperties.add(DiagnosticsProperty<HiveTokens>("tokens", tokens));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveTextInputColors>("colors", colors));
    diagnosticProperties.add(
        DiagnosticsProperty<HiveTextInputProperties>("properties", properties));
    diagnosticProperties
        .add(DiagnosticsProperty<HiveTextInputSizes>("sizes", sizes));
  }
}
