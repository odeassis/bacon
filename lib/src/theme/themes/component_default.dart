import 'package:bacon/src/theme/color_scheme/base.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
import 'package:bacon/src/theme/text_theme/default.dart';
import 'package:bacon/src/theme/theme_components/alert.dart';
import 'package:bacon/src/theme/theme_components/button.dart';
import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:bacon/src/theme/theme_components/toast.dart';
import 'package:bacon/src/theme/themes/shadows.dart';
import 'package:bacon/src/utils/positions.dart';
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

  static BaconButtonSizesTheme buttonSizesTheme() {
    return const BaconButtonSizesTheme(
      regular: BaconButtonSizeTheme(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      sm: BaconButtonSizeTheme(
        height: 36,
        padding: EdgeInsets.symmetric(horizontal: 12),
      ),
      lg: BaconButtonSizeTheme(
        height: 44,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      ),
      icon: BaconButtonSizeTheme(
        height: 40,
        width: 40,
        padding: EdgeInsets.zero,
      ),
    );
  }

  static BaconButtonTheme primaryButtonTheme({
    required BaconColorScheme colorScheme,
  }) {
    return BaconButtonTheme(
      backgroundColor: colorScheme.backgroundPrimary,
      hoverBackgroundColor: colorScheme.backgroundBrandLight,
      hoverForegroundColor: colorScheme.backgroundAccentGreen,
      foregroundColor: colorScheme.contentBrand,
    );
  }

  static BaconToastTheme primaryToastTheme({
    required BaconColorScheme colorScheme,
    required BorderRadius radius,
    required BaconTextThemeData textTheme,
  }) {
    return BaconToastTheme(
      alignment: Alignment.bottomRight,
      // closeIconSrc: ShadAssets.x,
      titleStyle: textTheme.labelMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.contentPrimary,
      ),
      descriptionStyle: textTheme.labelLarge.copyWith(
        color: colorScheme.contentAccentBlue.withOpacity(.9),
      ),
      actionPadding: const EdgeInsets.only(left: 16),
      border: Border.all(color: colorScheme.borderAccentBlue),
      shadows: BaconShadows.lg,
      backgroundColor: colorScheme.backgroundAccentOrange,
      crossAxisAlignment: CrossAxisAlignment.center,
      closeIconPosition: const Position(top: 8, right: 8),
      showCloseIconOnlyWhenHovered: true,
      padding: const EdgeInsets.fromLTRB(24, 24, 32, 24),
    );
  }

  static BaconToastTheme destructiveToastTheme({
    required BaconColorScheme colorScheme,
    required BorderRadius radius,
    required BaconTextThemeData textTheme,
  }) {
    return BaconToastTheme(
      alignment: Alignment.bottomRight,
      // closeIconSrc: Icon(BaconIcons.delete),
      titleStyle: textTheme.labelMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.contentAlertDanger,
      ),
      descriptionStyle: textTheme.labelMedium.copyWith(
        color: colorScheme.contentAlertDanger.withOpacity(.9),
      ),
      actionPadding: const EdgeInsets.only(left: 16),
      border: Border.all(color: colorScheme.borderAccentBlue),
      shadows: BaconShadows.lg,
      backgroundColor: colorScheme.backgroundAccentBlue,
      crossAxisAlignment: CrossAxisAlignment.center,
      closeIconPosition: const Position(top: 8, right: 8),
      showCloseIconOnlyWhenHovered: true,
      padding: const EdgeInsets.fromLTRB(24, 24, 32, 24),
    );
  }

  static BaconAlertTheme warningAlertTheme({
    required BaconColorScheme colorScheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      decoration: BaconDecoration(
        border: BaconBorder(
          color: colorScheme.borderPrimary,
          borderRadius: radius,
          padding: const EdgeInsets.all(16),
        ),
      ),
      titleStyle: textTheme.headlineMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.contentPrimary,
      ),
      bodyStyle: textTheme.bodyMedium.copyWith(
        color: colorScheme.contentPrimary,
      ),
    );
  }

  static BaconAlertTheme successAlertTheme({
    required BaconColorScheme colorScheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      decoration: BaconDecoration(
        border: BaconBorder(
          color: colorScheme.borderPrimary,
          borderRadius: radius,
          padding: const EdgeInsets.all(16),
        ),
      ),
      titleStyle: textTheme.headlineMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.contentPrimary,
      ),
      bodyStyle: textTheme.bodyMedium.copyWith(
        color: colorScheme.contentPrimary,
      ),
    );
  }

  static BaconAlertTheme errorAlertTheme({
    required BaconColorScheme colorScheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      decoration: BaconDecoration(
        border: BaconBorder(
          color: colorScheme.borderPrimary,
          borderRadius: radius,
          padding: const EdgeInsets.all(16),
        ),
      ),
      titleStyle: textTheme.headlineMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.contentPrimary,
      ),
      bodyStyle: textTheme.bodyMedium.copyWith(
        color: colorScheme.contentPrimary,
      ),
    );
  }

  static BaconAlertTheme updateAlertTheme({
    required BaconColorScheme colorScheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      decoration: BaconDecoration(
        border: BaconBorder(
          color: colorScheme.borderPrimary,
          borderRadius: radius,
          padding: const EdgeInsets.all(16),
        ),
      ),
      titleStyle: textTheme.headlineMedium.copyWith(
        fontWeight: FontWeight.w500,
        color: colorScheme.contentPrimary,
      ),
      bodyStyle: textTheme.bodyMedium.copyWith(
        color: colorScheme.contentPrimary,
      ),
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
