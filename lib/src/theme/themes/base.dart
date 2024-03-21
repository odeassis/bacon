import 'package:bacon/src/theme/color_scheme/base.dart';
import 'package:bacon/src/theme/components/decorator.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
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
  });

  final BaconColorScheme colorScheme;
  final Brightness brightness;
  final Iterable<ThemeExtension<dynamic>>? extensions;
  final BorderRadius radius;
  final BaconDecoration decoration;
  final BaconTextThemeData textTheme;
  final Responsive responsive;
}
