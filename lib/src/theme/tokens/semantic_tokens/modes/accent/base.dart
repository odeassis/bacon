import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBaseAccentSemanticTokensColors
    extends ThemeExtension<BaconBaseAccentSemanticTokensColors>
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

  const BaconBaseAccentSemanticTokensColors({
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
  BaconBaseAccentSemanticTokensColors lerp(
    BaconBaseAccentSemanticTokensColors? other,
    double t,
  ) {
    if (other is! BaconBaseAccentSemanticTokensColors) return this;
    return BaconBaseAccentSemanticTokensColors(
      purple: colorsLerp(purple, other.purple, t)!,
      purpleLight: colorsLerp(purpleLight, other.purpleLight, t)!,
      pink: colorsLerp(pink, other.pink, t)!,
      pinkLight: colorsLerp(pinkLight, other.pinkLight, t)!,
      red: colorsLerp(red, other.red, t)!,
      redLight: colorsLerp(redLight, other.redLight, t)!,
      orange: colorsLerp(orange, other.orange, t)!,
      orangeLight: colorsLerp(orangeLight, other.orangeLight, t)!,
      yellow: colorsLerp(yellow, other.yellow, t)!,
      yellowLight: colorsLerp(yellowLight, other.yellowLight, t)!,
      green: colorsLerp(green, other.green, t)!,
      greenLight: colorsLerp(greenLight, other.greenLight, t)!,
      blue: colorsLerp(blue, other.blue, t)!,
      blueLight: colorsLerp(blueLight, other.blueLight, t)!,
    );
  }

  @override
  BaconBaseAccentSemanticTokensColors copyWith({
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
    return BaconBaseAccentSemanticTokensColors(
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
    properties.add(
        DiagnosticsProperty("type", "BaconBaseAccentSemanticTokensColors"));
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
