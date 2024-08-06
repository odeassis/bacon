import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/utils.dart' as utils;

@immutable
class HiveAccentColorsTokens extends ThemeExtension<HiveAccentColorsTokens>
    with DiagnosticableTreeMixin {
  final Color purple;
  final Color purpleLight;
  final Color pink;
  final Color pinkLight;
  final Color red;
  final Color redLight;
  final Color orange;
  final Color orangeLight;
  final Color yellow;
  final Color yellowLight;
  final Color green;
  final Color greenLight;
  final Color blue;
  final Color blueLight;

  const HiveAccentColorsTokens({
    required this.purple,
    required this.purpleLight,
    required this.pink,
    required this.pinkLight,
    required this.red,
    required this.redLight,
    required this.orange,
    required this.orangeLight,
    required this.yellow,
    required this.yellowLight,
    required this.green,
    required this.greenLight,
    required this.blue,
    required this.blueLight,
  });

  @override
  HiveAccentColorsTokens lerp(
    HiveAccentColorsTokens? other,
    double t,
  ) {
    if (other is! HiveAccentColorsTokens) return this;
    return HiveAccentColorsTokens(
      purple: utils.colorsLerp(purple, other.purple, t)!,
      purpleLight: utils.colorsLerp(purpleLight, other.purpleLight, t)!,
      pink: utils.colorsLerp(pink, other.pink, t)!,
      pinkLight: utils.colorsLerp(pinkLight, other.pinkLight, t)!,
      red: utils.colorsLerp(red, other.red, t)!,
      redLight: utils.colorsLerp(redLight, other.redLight, t)!,
      orange: utils.colorsLerp(orange, other.orange, t)!,
      orangeLight: utils.colorsLerp(orangeLight, other.orangeLight, t)!,
      yellow: utils.colorsLerp(yellow, other.yellow, t)!,
      yellowLight: utils.colorsLerp(yellowLight, other.yellowLight, t)!,
      green: utils.colorsLerp(green, other.green, t)!,
      greenLight: utils.colorsLerp(greenLight, other.greenLight, t)!,
      blue: utils.colorsLerp(blue, other.blue, t)!,
      blueLight: utils.colorsLerp(blueLight, other.blueLight, t)!,
    );
  }

  @override
  HiveAccentColorsTokens copyWith({
    Color? purple,
    Color? purpleLight,
    Color? pink,
    Color? pinkLight,
    Color? red,
    Color? redLight,
    Color? orange,
    Color? orangeLight,
    Color? yellow,
    Color? yellowLight,
    Color? green,
    Color? greenLight,
    Color? blue,
    Color? blueLight,
  }) {
    return HiveAccentColorsTokens(
      purple: purple ?? this.purple,
      purpleLight: purpleLight ?? this.purpleLight,
      pink: pink ?? this.pink,
      pinkLight: pinkLight ?? this.pinkLight,
      red: red ?? this.red,
      redLight: redLight ?? this.redLight,
      orange: orange ?? this.orange,
      orangeLight: orangeLight ?? this.orangeLight,
      yellow: yellow ?? this.yellow,
      yellowLight: yellowLight ?? this.yellowLight,
      green: green ?? this.green,
      greenLight: greenLight ?? this.greenLight,
      blue: blue ?? this.blue,
      blueLight: blueLight ?? this.blueLight,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "HiveAccentColorsTokens"));
    properties.add(DiagnosticsProperty<Color>('purple', purple));
    properties.add(DiagnosticsProperty<Color>('purpleLight', purpleLight));
    properties.add(DiagnosticsProperty<Color>('pink', pink));
    properties.add(DiagnosticsProperty<Color>('pinkLight', pinkLight));
    properties.add(DiagnosticsProperty<Color>('red', red));
    properties.add(DiagnosticsProperty<Color>('redLight', redLight));
    properties.add(DiagnosticsProperty<Color>('orange', orange));
    properties.add(DiagnosticsProperty<Color>('orangeLight', orangeLight));
    properties.add(DiagnosticsProperty<Color>('yellow', yellow));
    properties.add(DiagnosticsProperty<Color>('yellowLight', yellowLight));
    properties.add(DiagnosticsProperty<Color>('green', green));
    properties.add(DiagnosticsProperty<Color>('greenLight', greenLight));
    properties.add(DiagnosticsProperty<Color>('blue', blue));
    properties.add(DiagnosticsProperty<Color>('blueLight', blueLight));
  }
}
