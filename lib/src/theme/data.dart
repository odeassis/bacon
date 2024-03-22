import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
import 'package:bacon/src/theme/theme_components/alert.dart';
import 'package:bacon/src/theme/theme_components/button.dart';
import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:bacon/src/theme/themes/default_components/alert.dart';
import 'package:flutter/material.dart';

@immutable
class BaconThemeData extends BaconBaseTheme {
  factory BaconThemeData({
    required BaconColorScheme colorScheme,
    required Brightness brightness,
    Iterable<ThemeExtension<dynamic>>? extensions,
    BorderRadius? radius,
    BaconTextThemeData? textTheme,
    Responsive? responsive,
    BaconDecoration? decoration,
    BaconButtonSizesTheme? buttonSizesTheme,
    BaconButtonTheme? primaryButtonTheme,
    BaconToastTheme? primaryToastTheme,
    BaconToastTheme? destructiveToastTheme,
    BaconAlertTheme? informationAlertFilledTheme,
    BaconAlertTheme? informationAlertLightTheme,
    BaconAlertTheme? informationAlertOutlineTheme,
    BaconAlertTheme? warningAlertTheme,
    BaconAlertTheme? successAlertTheme,
    BaconAlertTheme? errorAlertTheme,
    BaconAlertTheme? updateAlertTheme,
  }) {
    final effectiveRadius = radius ??
        const BorderRadius.all(
          Radius.circular(8.0),
        );
    final effectiveTextTheme =
        BaconComponentDefaultTheme.textTheme().mergeWith(textTheme);

    return BaconThemeData._internal(
      colorScheme: colorScheme,
      brightness: brightness,
      extensions: extensions,
      textTheme: effectiveTextTheme,
      radius: effectiveRadius,
      responsive: responsive ?? Responsive(),
      decoration: BaconComponentDefaultTheme.decoration(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(
        decoration,
      ),
      buttonSizesTheme: BaconComponentDefaultTheme.buttonSizesTheme().mergeWith(
        buttonSizesTheme,
      ),
      primaryButtonTheme: primaryButtonTheme ??
          BaconComponentDefaultTheme.primaryButtonTheme(
              colorScheme: colorScheme),
      primaryToastTheme: BaconComponentDefaultTheme.primaryToastTheme(
        colorScheme: colorScheme,
        radius: effectiveRadius,
        textTheme: effectiveTextTheme,
      ).mergeWith(primaryToastTheme),
      destructiveToastTheme: BaconComponentDefaultTheme.destructiveToastTheme(
        colorScheme: colorScheme,
        radius: effectiveRadius,
        textTheme: effectiveTextTheme,
      ).mergeWith(destructiveToastTheme),
      informationAlertFilledTheme:
          BaconAlertDefaultComponents.alertInformationFilled(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(informationAlertFilledTheme),
      informationAlertLightTheme:
          BaconAlertDefaultComponents.alertInformationLight(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(informationAlertLightTheme),
      informationAlertOutlineTheme:
          BaconAlertDefaultComponents.alertInformationOutline(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(informationAlertOutlineTheme),
      warningAlertTheme: BaconComponentDefaultTheme.warningAlertTheme(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(warningAlertTheme),
      successAlertTheme: BaconComponentDefaultTheme.successAlertTheme(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(successAlertTheme),
      errorAlertTheme: BaconComponentDefaultTheme.errorAlertTheme(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(errorAlertTheme),
      updateAlertTheme: BaconComponentDefaultTheme.updateAlertTheme(
        colorScheme: colorScheme,
        textTheme: effectiveTextTheme,
        radius: effectiveRadius,
      ).mergeWith(updateAlertTheme),
    );
  }

  BaconThemeData._internal({
    required super.colorScheme,
    required super.brightness,
    required super.extensions,
    required super.textTheme,
    required super.radius,
    required super.decoration,
    required super.responsive,
    required super.primaryButtonTheme,
    required super.buttonSizesTheme,
    required super.primaryToastTheme,
    required super.destructiveToastTheme,
    required super.informationAlertFilledTheme,
    required super.informationAlertLightTheme,
    required super.informationAlertOutlineTheme,
    required super.warningAlertTheme,
    required super.successAlertTheme,
    required super.errorAlertTheme,
    required super.updateAlertTheme,
  });

  static BaconThemeData lerp(
    BaconThemeData a,
    BaconThemeData b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return BaconThemeData(
      colorScheme: BaconColorScheme.lerp(a.colorScheme, b.colorScheme, t),
      brightness: b.brightness,
      radius: BorderRadius.lerp(a.radius, b.radius, t),
      textTheme: BaconTextThemeData.lerp(a.textTheme, b.textTheme, t),
      decoration: BaconDecoration.lerp(a.decoration, b.decoration, t),
      responsive: Responsive.lerp(a.responsive, b.responsive, t),
      buttonSizesTheme: BaconButtonSizesTheme.lerp(
        a.buttonSizesTheme,
        b.buttonSizesTheme,
        t,
      ),
      primaryButtonTheme:
          BaconButtonTheme.lerp(a.primaryButtonTheme, b.primaryButtonTheme, t),
      primaryToastTheme:
          BaconToastTheme.lerp(a.primaryToastTheme, b.primaryToastTheme, t),
      destructiveToastTheme: BaconToastTheme.lerp(
          a.destructiveToastTheme, b.destructiveToastTheme, t),
      informationAlertFilledTheme: BaconAlertTheme.lerp(
          a.informationAlertFilledTheme, b.informationAlertFilledTheme, t),
      informationAlertLightTheme: BaconAlertTheme.lerp(
          a.informationAlertLightTheme, b.informationAlertLightTheme, t),
      informationAlertOutlineTheme: BaconAlertTheme.lerp(
          a.informationAlertOutlineTheme, b.informationAlertOutlineTheme, t),
      warningAlertTheme:
          BaconAlertTheme.lerp(a.warningAlertTheme, b.warningAlertTheme, t),
      successAlertTheme:
          BaconAlertTheme.lerp(a.successAlertTheme, b.successAlertTheme, t),
      errorAlertTheme:
          BaconAlertTheme.lerp(a.errorAlertTheme, b.errorAlertTheme, t),
      updateAlertTheme:
          BaconAlertTheme.lerp(a.updateAlertTheme, b.updateAlertTheme, t),
    );
  }

  BaconThemeData copyWith({
    BaconColorScheme? colorScheme,
    Brightness? brightness,
    Iterable<ThemeExtension<dynamic>>? extensions,
    BaconTextThemeData? textTheme,
    BorderRadius? radius,
    BaconDecoration? decoration,
    Responsive? responsive,
    BaconButtonSizesTheme? buttonSizesTheme,
    BaconButtonTheme? primaryButtonTheme,
    BaconToastTheme? primaryToastTheme,
    BaconToastTheme? destructiveToastTheme,
    BaconAlertTheme? informationAlertFilledTheme,
    BaconAlertTheme? informationAlertLightTheme,
    BaconAlertTheme? informationAlertOutlineTheme,
    BaconAlertTheme? warningAlertTheme,
    BaconAlertTheme? successAlertTheme,
    BaconAlertTheme? errorAlertTheme,
    BaconAlertTheme? updateAlertTheme,
  }) {
    return BaconThemeData(
      colorScheme: colorScheme ?? this.colorScheme,
      brightness: brightness ?? this.brightness,
      extensions: extensions ?? this.extensions,
      textTheme: textTheme ?? this.textTheme,
      radius: radius ?? this.radius,
      decoration: decoration ?? this.decoration,
      responsive: responsive ?? this.responsive,
      buttonSizesTheme: buttonSizesTheme ?? this.buttonSizesTheme,
      primaryButtonTheme: primaryButtonTheme ?? this.primaryButtonTheme,
      primaryToastTheme: primaryToastTheme ?? this.primaryToastTheme,
      destructiveToastTheme:
          destructiveToastTheme ?? this.destructiveToastTheme,
      informationAlertFilledTheme:
          informationAlertFilledTheme ?? this.informationAlertFilledTheme,
      informationAlertLightTheme:
          informationAlertLightTheme ?? this.informationAlertLightTheme,
      informationAlertOutlineTheme:
          informationAlertOutlineTheme ?? this.informationAlertOutlineTheme,
      warningAlertTheme: warningAlertTheme ?? this.warningAlertTheme,
      successAlertTheme: successAlertTheme ?? this.successAlertTheme,
      errorAlertTheme: errorAlertTheme ?? this.errorAlertTheme,
      updateAlertTheme: updateAlertTheme ?? this.updateAlertTheme,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconThemeData &&
        other.colorScheme == colorScheme &&
        other.brightness == brightness &&
        other.textTheme == textTheme &&
        other.radius == radius &&
        other.decoration == decoration &&
        other.primaryButtonTheme == primaryButtonTheme &&
        other.buttonSizesTheme == buttonSizesTheme &&
        other.primaryToastTheme == primaryToastTheme &&
        other.destructiveToastTheme == destructiveToastTheme &&
        other.informationAlertFilledTheme == informationAlertFilledTheme &&
        other.informationAlertLightTheme == informationAlertLightTheme &&
        other.informationAlertOutlineTheme == informationAlertOutlineTheme &&
        other.warningAlertTheme == warningAlertTheme &&
        other.successAlertTheme == successAlertTheme &&
        other.errorAlertTheme == errorAlertTheme &&
        other.updateAlertTheme == updateAlertTheme;
  }

  @override
  int get hashCode {
    return decoration.hashCode ^
        colorScheme.hashCode ^
        brightness.hashCode ^
        textTheme.hashCode ^
        radius.hashCode ^
        primaryButtonTheme.hashCode ^
        primaryToastTheme.hashCode ^
        destructiveToastTheme.hashCode ^
        informationAlertFilledTheme.hashCode ^
        informationAlertLightTheme.hashCode ^
        informationAlertOutlineTheme.hashCode ^
        warningAlertTheme.hashCode ^
        successAlertTheme.hashCode ^
        errorAlertTheme.hashCode ^
        updateAlertTheme.hashCode;
  }
}
