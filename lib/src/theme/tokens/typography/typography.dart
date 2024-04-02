import 'package:bacon/src/theme/tokens/primitives/font/fonts.dart';
import 'package:bacon/src/theme/tokens/typography/text_styles.dart';
import 'package:flutter/material.dart';

class BaconDefaultSemanticTokensTypography {
  static BaconTextStyles display = BaconTextStyles(
    x2l: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize112,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBlack,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingTight,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize112,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBlack,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize96,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height120,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingTight,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize52,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height120,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingTight,
    ),
    sm: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize44,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize36,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    x2s: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize32,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
  );

  static BaconTextStyles headline = BaconTextStyles(
    x2l: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize40,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize36,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize32,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize28,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    sm: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize24,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize20,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    x2s: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize24,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightBold,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
  );

  static BaconTextStyles paragraph = BaconTextStyles(
    x2l: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize32,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize20,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize18,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize16,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    sm: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize14,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize12,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    x2s: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize12,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightRegular,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingTight,
    ),
  );

  static BaconTextStyles label = BaconTextStyles(
    x2l: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize32,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize20,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize18,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize16,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    sm: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize14,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize12,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingDefault,
    ),
    x2s: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: BaconDefaultPrimitiveFontSizes.font.fontSize12,
      fontWeight: BaconDefaultPrimitiveFontSizes.font.fontWeightMedium,
      height: BaconDefaultPrimitiveFontSizes.font.height140,
      letterSpacing: BaconDefaultPrimitiveFontSizes.font.letterSpacingTight,
    ),
  );
}

class _BaconTextStyle extends TextStyle {
  const _BaconTextStyle({
    super.fontSize,
    super.decoration,
    super.fontStyle,
    super.fontWeight,
    super.height,
    super.letterSpacing,
  }) : super(
          fontFamily: 'Inter',
          package: 'bacon',
        );
}
