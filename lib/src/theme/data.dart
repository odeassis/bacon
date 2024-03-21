import 'package:bacon/src/theme/color_scheme/base.dart';
import 'package:bacon/src/theme/components/button.dart';
import 'package:bacon/src/theme/components/decorator.dart';
import 'package:bacon/src/theme/text_theme/data.dart';
import 'package:bacon/src/theme/themes/base.dart';
import 'package:bacon/src/theme/themes/component_default.dart';
import 'package:bacon/src/utils/responsive.dart';
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
    BaconButtonTheme? primaryButtonTheme,
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
      primaryButtonTheme: primaryButtonTheme ??
          BaconComponentDefaultTheme.primaryButtonTheme(
              colorScheme: colorScheme),
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
      primaryButtonTheme:
          BaconButtonTheme.lerp(a.primaryButtonTheme, b.primaryButtonTheme, t),
    );
  }

  BaconThemeData copyWith({
    BaconColorScheme? colorScheme,
    Brightness? brightness,
    Iterable<ThemeExtension<dynamic>>? extensions,
    BaconTextThemeData? textTheme,
    BorderRadius? radius,
    BaconDecoration? decoration,
    BaconButtonTheme? primaryButtonTheme,
  }) {
    return BaconThemeData(
      colorScheme: colorScheme ?? this.colorScheme,
      brightness: brightness ?? this.brightness,
      extensions: extensions ?? this.extensions,
      textTheme: textTheme ?? this.textTheme,
      radius: radius ?? this.radius,
      decoration: decoration ?? this.decoration,
      primaryButtonTheme: primaryButtonTheme ?? this.primaryButtonTheme,
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
        other.primaryButtonTheme == primaryButtonTheme;
  }

  @override
  int get hashCode {
    return decoration.hashCode ^
        colorScheme.hashCode ^
        brightness.hashCode ^
        textTheme.hashCode ^
        radius.hashCode ^
        primaryButtonTheme.hashCode;
  }
}
