import 'package:bacon/src/theme/color_scheme/base.dart';
import 'package:bacon/src/theme/components/button.dart';
import 'package:bacon/src/theme/components/decorator.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
import 'package:bacon/src/theme/text_theme/default.dart';
import 'package:flutter/material.dart';

abstract class BaconComponentDefaultTheme {
  static BaconDecoration decoration({
    required BaconColorScheme colorScheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconDecoration(
      border: const BaconBorder(padding: EdgeInsets.all(4)),
      labelStyle: textTheme.labelLarge,
      errorStyle: textTheme.labelSmall.copyWith(
        color: colorScheme.contentAlertDanger,
      ),
      labelPadding: const EdgeInsets.only(bottom: 8),
      descriptionStyle: textTheme.labelMedium,
      descriptionPadding: const EdgeInsets.only(top: 8),
      errorPadding: const EdgeInsets.only(top: 8),
      errorLabelStyle: textTheme.labelSmall.copyWith(
        color: colorScheme.contentAlertDanger,
      ),
      focusedBorder: BaconBorder(
        width: 2,
        color: colorScheme.borderBrand,
        borderRadius: radius.add(radius / 2),
        padding: const EdgeInsets.all(2),
      ),
    );
  }

  static BaconButtonTheme primaryButtonTheme({
    required BaconColorScheme colorScheme,
  }) {
    return BaconButtonTheme(
      backgroundColor: colorScheme.backgroundBrand,
      hoverBackgroundColor: colorScheme.backgroundBrandLight,
      hoverForegroundColor: colorScheme.backgroundAccentGreen,
    );
  }

  static BaconTextThemeData textTheme() {
    return BaconTextThemeData(
      displayLarge: BaconTextDefaultTheme.displayLarge(
        textColor: Colors.black,
      ),
      displayMedium: BaconTextDefaultTheme.displayMedium(
        textColor: Colors.black,
      ),
      displaySmall: BaconTextDefaultTheme.displaySmall(
        textColor: Colors.black,
      ),
      displayXSmall: BaconTextDefaultTheme.displayXSmall(
        textColor: Colors.black,
      ),
      headlineXXLarge: BaconTextDefaultTheme.headlineXXLarge(
        textColor: Colors.black,
      ),
      headlineXLarge: BaconTextDefaultTheme.headlineXLarge(
        textColor: Colors.black,
      ),
      headlineLarge: BaconTextDefaultTheme.headlineLarge(
        textColor: Colors.black,
      ),
      headlineMedium: BaconTextDefaultTheme.headlineMedium(
        textColor: Colors.black,
      ),
      headlineSmall: BaconTextDefaultTheme.headlineSmall(
        textColor: Colors.black,
      ),
      headlineXSmall: BaconTextDefaultTheme.headlineXSmall(
        textColor: Colors.black,
      ),
      bodyLarge: BaconTextDefaultTheme.bodyLarge(
        textColor: Colors.black,
      ),
      bodyMedium: BaconTextDefaultTheme.bodyMedium(
        textColor: Colors.black,
      ),
      bodySmall: BaconTextDefaultTheme.bodySmall(
        textColor: Colors.black,
      ),
      bodyXSmall: BaconTextDefaultTheme.bodyXSmall(
        textColor: Colors.black,
      ),
      labelLarge: BaconTextDefaultTheme.labelLarge(
        textColor: Colors.black,
      ),
      labelMedium: BaconTextDefaultTheme.labelMedium(
        textColor: Colors.black,
      ),
      labelSmall: BaconTextDefaultTheme.labelSmall(
        textColor: Colors.black,
      ),
      labelXSmall: BaconTextDefaultTheme.labelXSmall(
        textColor: Colors.black,
      ),
    );
  }
}
