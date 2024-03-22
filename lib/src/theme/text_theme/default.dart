import 'package:bacon/src/theme/variables/primitives/font.dart';
import 'package:flutter/material.dart';

final PrimitiveFont primitiveFont = PrimitiveFont();

abstract class BaconTextDefaultTheme {
  static BaconTextStyle displayLarge({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingTight,
      height: primitiveFont.baconLineHeightTight,
      textColor: textColor,
    );
  }

  static BaconTextStyle displayMedium({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayMedium,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingTight,
      height: primitiveFont.baconLineHeightTight,
      textColor: textColor,
    );
  }

  static BaconTextStyle displaySmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplaySmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle displayXSmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeDisplayXSmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle headlineXXLarge({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingXXLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle headlineXLarge({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingXLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle headlineLarge({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingLarge,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle headlineMedium({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingMedium,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle headlineSmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingSmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle headlineXSmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeHeadingXSmall,
      fontWeight: primitiveFont.baconFontWeightBold,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle bodyLarge({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphLarge,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle bodyMedium({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphMedium,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle bodySmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphSmall,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle bodyXSmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeParagraphXSmall,
      fontWeight: primitiveFont.baconFontWeightRegular,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle labelLarge({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelLarge,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle labelMedium({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelMedium,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle labelSmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelSmall,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }

  static BaconTextStyle labelXSmall({
    required Color textColor,
  }) {
    return BaconTextStyle(
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: primitiveFont.baconFontSizeLabelXSmall,
      fontWeight: primitiveFont.baconFontWeightMedium,
      letterSpacing: primitiveFont.baconLetterSpacingDefault,
      height: primitiveFont.baconLineHeightDefault,
      textColor: textColor,
    );
  }
}

@immutable
class BaconTextStyle extends TextStyle {
  const BaconTextStyle({
    super.fontSize,
    super.decoration,
    super.fontStyle,
    super.fontWeight,
    super.height,
    super.letterSpacing,
    required this.textColor,
  }) : super(
          fontFamily: 'Geist',
          package: 'bacon',
          color: textColor,
        );

  final Color textColor;
}
