import 'package:bacon/src/theme/color_scheme/base.dart';
import 'package:bacon/src/theme/shape/base.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
import 'package:bacon/src/theme/theme_components/alert.dart';
import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:flutter/material.dart';

class BaconAlertDefaultComponents {
  // Alert variant: information, style: filled
  static BaconAlertTheme alertInformationFilled({
    required BaconColorScheme colorScheme,
    required BaconShapeTheme shapeTheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      backgroundColor: colorScheme.backgroundAlertInformation,
      decoration: const BaconDecoration(),
      titleStyle: textTheme.labelSmall.copyWith(
        color: colorScheme.contentInverse,
      ),
      bodyStyle: textTheme.bodySmall.copyWith(
        color: colorScheme.contentInverse,
      ),
    );
  }

  // Alert variant: information, style: light
  static BaconAlertTheme alertInformationLight({
    required BaconColorScheme colorScheme,
    required BaconShapeTheme shapeTheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      backgroundColor: colorScheme.backgroundAlertInformationLight,
      decoration: const BaconDecoration(),
      titleStyle: textTheme.labelSmall.copyWith(
        color: colorScheme.contentPrimary,
      ),
      bodyStyle: textTheme.bodySmall.copyWith(
        color: colorScheme.contentPrimary,
      ),
    );
  }

  // Alert variant: information, style: outline
  static BaconAlertTheme alertInformationOutline({
    required BaconColorScheme colorScheme,
    required BaconShapeTheme shapeTheme,
    required BaconTextThemeData textTheme,
    required BorderRadius radius,
  }) {
    return BaconAlertTheme(
      merge: true,
      backgroundColor: colorScheme.backgroundPrimary,
      decoration: BaconDecoration(
        border: BaconBorder(
          color: colorScheme.borderPrimary,
          borderRadius: radius,
        ),
      ),
      titleStyle: textTheme.labelSmall.copyWith(
        color: colorScheme.contentPrimary,
      ),
      bodyStyle: textTheme.bodySmall.copyWith(
        color: colorScheme.contentPrimary,
      ),
    );
  }

  static BaconAlertTheme warningAlertTheme({
    required BaconColorScheme colorScheme,
    required BaconShapeTheme shapeTheme,
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
    required BaconShapeTheme shapeTheme,
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
    required BaconShapeTheme shapeTheme,
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
}
