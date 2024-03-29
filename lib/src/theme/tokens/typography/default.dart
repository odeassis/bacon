import 'package:bacon/src/theme/tokens/primitives/font.dart';
import 'package:bacon/src/theme/tokens/typography/text_styles.dart';
import 'package:flutter/material.dart';

final PrimitiveFont primitiveFont = PrimitiveFont();

class BaconDefaultTextStyle {
  static BaconTextStyles display = BaconTextStyles(
    xxl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingTight,
      height: primitiveFont.baconLineHeightTight,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingTight,
      height: primitiveFont.baconLineHeightTight,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayMedium,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingTight,
      height: primitiveFont.baconLineHeightTight,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayMedium,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingTight,
      height: primitiveFont.baconLineHeightTight,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplaySmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xxs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayXSmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
  );

  static BaconTextStyles headline = BaconTextStyles(
    xxl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingXXLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingXLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingMedium,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingMedium,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingSmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xxs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingXSmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
  );

  static BaconTextStyles paragraph = BaconTextStyles(
    xxl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphLarge,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphLarge,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphMedium,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphMedium,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphSmall,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xxs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphXSmall,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
  );

  static BaconTextStyles label = BaconTextStyles(
    xxl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelLarge,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xl: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelLarge,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    md: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelMedium,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    lg: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelMedium,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
    ),
    xs: _BaconTextStyle(
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelSmall,
      fontWeight: primitiveFont.baconFontWeightMedium,
      // letterSpacing: primitiveFont.baconLetterSpacingDefault,
      // height: primitiveFont.baconLineHeightDefault,
    ),
    xxs: _BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelXSmall,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
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
