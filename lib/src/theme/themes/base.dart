import 'package:bacon/src/theme/color_scheme/base.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
import 'package:bacon/src/theme/theme_components/alert.dart';
import 'package:bacon/src/theme/theme_components/button.dart';
import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:bacon/src/theme/theme_components/toast.dart';
import 'package:bacon/src/utils/responsive.dart';
import 'package:flutter/material.dart';

abstract class BaconBaseTheme {
  BaconBaseTheme({
    required this.colorScheme,
    required this.brightness,
    required this.extensions,
    required this.decoration,
    required this.radius,
    required this.textTheme,
    required this.responsive,
    required this.primaryButtonTheme,
    required this.buttonSizesTheme,
    required this.primaryToastTheme,
    required this.destructiveToastTheme,
    required this.informationAlertFilledTheme,
    required this.informationAlertLightTheme,
    required this.informationAlertOutlineTheme,
    required this.warningAlertTheme,
    required this.successAlertTheme,
    required this.errorAlertTheme,
    required this.updateAlertTheme,
  });

  final BaconColorScheme colorScheme;
  final Brightness brightness;
  final Iterable<ThemeExtension<dynamic>>? extensions;
  final BorderRadius radius;
  final BaconDecoration decoration;
  final BaconTextThemeData textTheme;
  final Responsive responsive;
  final BaconButtonTheme primaryButtonTheme;
  final BaconButtonSizesTheme buttonSizesTheme;
  final BaconToastTheme primaryToastTheme;
  final BaconToastTheme destructiveToastTheme;

  // Alert themes
  final BaconAlertTheme informationAlertFilledTheme;
  final BaconAlertTheme informationAlertLightTheme;
  final BaconAlertTheme informationAlertOutlineTheme;
  final BaconAlertTheme warningAlertTheme;
  final BaconAlertTheme successAlertTheme;
  final BaconAlertTheme errorAlertTheme;
  final BaconAlertTheme updateAlertTheme;
}
