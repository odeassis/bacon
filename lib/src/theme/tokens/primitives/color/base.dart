import 'package:bacon/src/utils/colors_lerp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class BaconBasePrimitiveColors extends ThemeExtension<BaconBasePrimitiveColors>
    with DiagnosticableTreeMixin {
  final Color neutral0;
  final Color neutral100;
  final Color neutral200;
  final Color neutral300;
  final Color neutral400;
  final Color neutral500;
  final Color neutral600;
  final Color neutral700;
  final Color neutral800;
  final Color neutral900;
  final Color neutral1000;
  final Color neutral1100;
  final Color brand100;
  final Color brand200;
  final Color brand300;
  final Color brand400;
  final Color brand500;
  final Color brand600;
  final Color brand700;
  final Color brand800;
  final Color brand900;
  final Color brand1000;
  final Color blue100;
  final Color blue200;
  final Color blue300;
  final Color blue400;
  final Color blue500;
  final Color blue600;
  final Color blue700;
  final Color blue800;
  final Color blue900;
  final Color blue1000;
  final Color purple100;
  final Color purple200;
  final Color purple300;
  final Color purple400;
  final Color purple500;
  final Color purple600;
  final Color purple700;
  final Color purple800;
  final Color purple900;
  final Color purple1000;
  final Color green100;
  final Color green200;
  final Color green300;
  final Color green400;
  final Color green500;
  final Color green600;
  final Color green700;
  final Color green800;
  final Color green900;
  final Color green1000;
  final Color orange100;
  final Color orange200;
  final Color orange300;
  final Color orange400;
  final Color orange500;
  final Color orange600;
  final Color orange700;
  final Color orange800;
  final Color orange900;
  final Color orange1000;
  final Color pink100;
  final Color pink200;
  final Color pink300;
  final Color pink400;
  final Color pink500;
  final Color pink600;
  final Color pink700;
  final Color pink800;
  final Color pink900;
  final Color pink1000;
  final Color yellow100;
  final Color yellow200;
  final Color yellow300;
  final Color yellow400;
  final Color yellow500;
  final Color yellow600;
  final Color yellow700;
  final Color yellow800;
  final Color yellow900;
  final Color yellow1000;
  final Color red100;
  final Color red200;
  final Color red300;
  final Color red400;
  final Color red500;
  final Color red600;
  final Color red700;
  final Color red800;
  final Color red900;
  final Color red1000;
  final Color alpha;
  final Color alphaBrand;
  final Color alphaRed;

  BaconBasePrimitiveColors({
    required this.neutral0,
    required this.neutral100,
    required this.neutral200,
    required this.neutral300,
    required this.neutral400,
    required this.neutral500,
    required this.neutral600,
    required this.neutral700,
    required this.neutral800,
    required this.neutral900,
    required this.neutral1000,
    required this.neutral1100,
    required this.brand100,
    required this.brand200,
    required this.brand300,
    required this.brand400,
    required this.brand500,
    required this.brand600,
    required this.brand700,
    required this.brand800,
    required this.brand900,
    required this.brand1000,
    required this.blue100,
    required this.blue200,
    required this.blue300,
    required this.blue400,
    required this.blue500,
    required this.blue600,
    required this.blue700,
    required this.blue800,
    required this.blue900,
    required this.blue1000,
    required this.purple100,
    required this.purple200,
    required this.purple300,
    required this.purple400,
    required this.purple500,
    required this.purple600,
    required this.purple700,
    required this.purple800,
    required this.purple900,
    required this.purple1000,
    required this.green100,
    required this.green200,
    required this.green300,
    required this.green400,
    required this.green500,
    required this.green600,
    required this.green700,
    required this.green800,
    required this.green900,
    required this.green1000,
    required this.orange100,
    required this.orange200,
    required this.orange300,
    required this.orange400,
    required this.orange500,
    required this.orange600,
    required this.orange700,
    required this.orange800,
    required this.orange900,
    required this.orange1000,
    required this.pink100,
    required this.pink200,
    required this.pink300,
    required this.pink400,
    required this.pink500,
    required this.pink600,
    required this.pink700,
    required this.pink800,
    required this.pink900,
    required this.pink1000,
    required this.yellow100,
    required this.yellow200,
    required this.yellow300,
    required this.yellow400,
    required this.yellow500,
    required this.yellow600,
    required this.yellow700,
    required this.yellow800,
    required this.yellow900,
    required this.yellow1000,
    required this.red100,
    required this.red200,
    required this.red300,
    required this.red400,
    required this.red500,
    required this.red600,
    required this.red700,
    required this.red800,
    required this.red900,
    required this.red1000,
    required this.alpha,
    required this.alphaBrand,
    required this.alphaRed,
  });

  @override
  BaconBasePrimitiveColors copyWith({
    Color? neutral0,
    Color? neutral100,
    Color? neutral200,
    Color? neutral300,
    Color? neutral400,
    Color? neutral500,
    Color? neutral600,
    Color? neutral700,
    Color? neutral800,
    Color? neutral900,
    Color? neutral1000,
    Color? neutral1100,
    Color? brand100,
    Color? brand200,
    Color? brand300,
    Color? brand400,
    Color? brand500,
    Color? brand600,
    Color? brand700,
    Color? brand800,
    Color? brand900,
    Color? brand1000,
    Color? blue100,
    Color? blue200,
    Color? blue300,
    Color? blue400,
    Color? blue500,
    Color? blue600,
    Color? blue700,
    Color? blue800,
    Color? blue900,
    Color? blue1000,
    Color? purple100,
    Color? purple200,
    Color? purple300,
    Color? purple400,
    Color? purple500,
    Color? purple600,
    Color? purple700,
    Color? purple800,
    Color? purple900,
    Color? purple1000,
    Color? green100,
    Color? green200,
    Color? green300,
    Color? green400,
    Color? green500,
    Color? green600,
    Color? green700,
    Color? green800,
    Color? green900,
    Color? green1000,
    Color? orange100,
    Color? orange200,
    Color? orange300,
    Color? orange400,
    Color? orange500,
    Color? orange600,
    Color? orange700,
    Color? orange800,
    Color? orange900,
    Color? orange1000,
    Color? pink100,
    Color? pink200,
    Color? pink300,
    Color? pink400,
    Color? pink500,
    Color? pink600,
    Color? pink700,
    Color? pink800,
    Color? pink900,
    Color? pink1000,
    Color? yellow100,
    Color? yellow200,
    Color? yellow300,
    Color? yellow400,
    Color? yellow500,
    Color? yellow600,
    Color? yellow700,
    Color? yellow800,
    Color? yellow900,
    Color? yellow1000,
    Color? red100,
    Color? red200,
    Color? red300,
    Color? red400,
    Color? red500,
    Color? red600,
    Color? red700,
    Color? red800,
    Color? red900,
    Color? red1000,
    Color? alpha,
    Color? alphaBrand,
    Color? alphaRed,
  }) {
    return BaconBasePrimitiveColors(
      neutral0: neutral0 ?? this.neutral0,
      neutral100: neutral100 ?? this.neutral100,
      neutral200: neutral200 ?? this.neutral200,
      neutral300: neutral300 ?? this.neutral300,
      neutral400: neutral400 ?? this.neutral400,
      neutral500: neutral500 ?? this.neutral500,
      neutral600: neutral600 ?? this.neutral600,
      neutral700: neutral700 ?? this.neutral700,
      neutral800: neutral800 ?? this.neutral800,
      neutral900: neutral900 ?? this.neutral900,
      neutral1000: neutral1000 ?? this.neutral1000,
      neutral1100: neutral1100 ?? this.neutral1100,
      brand100: brand100 ?? this.brand100,
      brand200: brand200 ?? this.brand200,
      brand300: brand300 ?? this.brand300,
      brand400: brand400 ?? this.brand400,
      brand500: brand500 ?? this.brand500,
      brand600: brand600 ?? this.brand600,
      brand700: brand700 ?? this.brand700,
      brand800: brand800 ?? this.brand800,
      brand900: brand900 ?? this.brand900,
      brand1000: brand1000 ?? this.brand1000,
      blue100: blue100 ?? this.blue100,
      blue200: blue200 ?? this.blue200,
      blue300: blue300 ?? this.blue300,
      blue400: blue400 ?? this.blue400,
      blue500: blue500 ?? this.blue500,
      blue600: blue600 ?? this.blue600,
      blue700: blue700 ?? this.blue700,
      blue800: blue800 ?? this.blue800,
      blue900: blue900 ?? this.blue900,
      blue1000: blue1000 ?? this.blue1000,
      purple100: purple100 ?? this.purple100,
      purple200: purple200 ?? this.purple200,
      purple300: purple300 ?? this.purple300,
      purple400: purple400 ?? this.purple400,
      purple500: purple500 ?? this.purple500,
      purple600: purple600 ?? this.purple600,
      purple700: purple700 ?? this.purple700,
      purple800: purple800 ?? this.purple800,
      purple900: purple900 ?? this.purple900,
      purple1000: purple1000 ?? this.purple1000,
      green100: green100 ?? this.green100,
      green200: green200 ?? this.green200,
      green300: green300 ?? this.green300,
      green400: green400 ?? this.green400,
      green500: green500 ?? this.green500,
      green600: green600 ?? this.green600,
      green700: green700 ?? this.green700,
      green800: green800 ?? this.green800,
      green900: green900 ?? this.green900,
      green1000: green1000 ?? this.green1000,
      orange100: orange100 ?? this.orange100,
      orange200: orange200 ?? this.orange200,
      orange300: orange300 ?? this.orange300,
      orange400: orange400 ?? this.orange400,
      orange500: orange500 ?? this.orange500,
      orange600: orange600 ?? this.orange600,
      orange700: orange700 ?? this.orange700,
      orange800: orange800 ?? this.orange800,
      orange900: orange900 ?? this.orange900,
      orange1000: orange1000 ?? this.orange1000,
      pink100: pink100 ?? this.pink100,
      pink200: pink200 ?? this.pink200,
      pink300: pink300 ?? this.pink300,
      pink400: pink400 ?? this.pink400,
      pink500: pink500 ?? this.pink500,
      pink600: pink600 ?? this.pink600,
      pink700: pink700 ?? this.pink700,
      pink800: pink800 ?? this.pink800,
      pink900: pink900 ?? this.pink900,
      pink1000: pink1000 ?? this.pink1000,
      yellow100: yellow100 ?? this.yellow100,
      yellow200: yellow200 ?? this.yellow200,
      yellow300: yellow300 ?? this.yellow300,
      yellow400: yellow400 ?? this.yellow400,
      yellow500: yellow500 ?? this.yellow500,
      yellow600: yellow600 ?? this.yellow600,
      yellow700: yellow700 ?? this.yellow700,
      yellow800: yellow800 ?? this.yellow800,
      yellow900: yellow900 ?? this.yellow900,
      yellow1000: yellow1000 ?? this.yellow1000,
      red100: red100 ?? this.red100,
      red200: red200 ?? this.red200,
      red300: red300 ?? this.red300,
      red400: red400 ?? this.red400,
      red500: red500 ?? this.red500,
      red600: red600 ?? this.red600,
      red700: red700 ?? this.red700,
      red800: red800 ?? this.red800,
      red900: red900 ?? this.red900,
      red1000: red1000 ?? this.red1000,
      alpha: alpha ?? this.alpha,
      alphaBrand: alphaBrand ?? this.alphaBrand,
      alphaRed: alphaRed ?? this.alphaRed,
    );
  }

  @override
  BaconBasePrimitiveColors lerp(
      ThemeExtension<BaconBasePrimitiveColors>? other, double t) {
    if (other is! BaconBasePrimitiveColors) return this;
    return BaconBasePrimitiveColors(
      neutral0: colorsLerp(neutral0, other.neutral0, t)!,
      neutral100: colorsLerp(neutral100, other.neutral100, t)!,
      neutral200: colorsLerp(neutral200, other.neutral200, t)!,
      neutral300: colorsLerp(neutral300, other.neutral300, t)!,
      neutral400: colorsLerp(neutral400, other.neutral400, t)!,
      neutral500: colorsLerp(neutral500, other.neutral500, t)!,
      neutral600: colorsLerp(neutral600, other.neutral600, t)!,
      neutral700: colorsLerp(neutral700, other.neutral700, t)!,
      neutral800: colorsLerp(neutral800, other.neutral800, t)!,
      neutral900: colorsLerp(neutral900, other.neutral900, t)!,
      neutral1000: colorsLerp(neutral1000, other.neutral1000, t)!,
      neutral1100: colorsLerp(neutral1100, other.neutral1100, t)!,
      brand100: colorsLerp(brand100, other.brand100, t)!,
      brand200: colorsLerp(brand200, other.brand200, t)!,
      brand300: colorsLerp(brand300, other.brand300, t)!,
      brand400: colorsLerp(brand400, other.brand400, t)!,
      brand500: colorsLerp(brand500, other.brand500, t)!,
      brand600: colorsLerp(brand600, other.brand600, t)!,
      brand700: colorsLerp(brand700, other.brand700, t)!,
      brand800: colorsLerp(brand800, other.brand800, t)!,
      brand900: colorsLerp(brand900, other.brand900, t)!,
      brand1000: colorsLerp(brand1000, other.brand1000, t)!,
      blue100: colorsLerp(blue100, other.blue100, t)!,
      blue200: colorsLerp(blue200, other.blue200, t)!,
      blue300: colorsLerp(blue300, other.blue300, t)!,
      blue400: colorsLerp(blue400, other.blue400, t)!,
      blue500: colorsLerp(blue500, other.blue500, t)!,
      blue600: colorsLerp(blue600, other.blue600, t)!,
      blue700: colorsLerp(blue700, other.blue700, t)!,
      blue800: colorsLerp(blue800, other.blue800, t)!,
      blue900: colorsLerp(blue900, other.blue900, t)!,
      blue1000: colorsLerp(blue1000, other.blue1000, t)!,
      purple100: colorsLerp(purple100, other.purple100, t)!,
      purple200: colorsLerp(purple200, other.purple200, t)!,
      purple300: colorsLerp(purple300, other.purple300, t)!,
      purple400: colorsLerp(purple400, other.purple400, t)!,
      purple500: colorsLerp(purple500, other.purple500, t)!,
      purple600: colorsLerp(purple600, other.purple600, t)!,
      purple700: colorsLerp(purple700, other.purple700, t)!,
      purple800: colorsLerp(purple800, other.purple800, t)!,
      purple900: colorsLerp(purple900, other.purple900, t)!,
      purple1000: colorsLerp(purple1000, other.purple1000, t)!,
      green100: colorsLerp(green100, other.green100, t)!,
      green200: colorsLerp(green200, other.green200, t)!,
      green300: colorsLerp(green300, other.green300, t)!,
      green400: colorsLerp(green400, other.green400, t)!,
      green500: colorsLerp(green500, other.green500, t)!,
      green600: colorsLerp(green600, other.green600, t)!,
      green700: colorsLerp(green700, other.green700, t)!,
      green800: colorsLerp(green800, other.green800, t)!,
      green900: colorsLerp(green900, other.green900, t)!,
      green1000: colorsLerp(green1000, other.green1000, t)!,
      orange100: colorsLerp(orange100, other.orange100, t)!,
      orange200: colorsLerp(orange200, other.orange200, t)!,
      orange300: colorsLerp(orange300, other.orange300, t)!,
      orange400: colorsLerp(orange400, other.orange400, t)!,
      orange500: colorsLerp(orange500, other.orange500, t)!,
      orange600: colorsLerp(orange600, other.orange600, t)!,
      orange700: colorsLerp(orange700, other.orange700, t)!,
      orange800: colorsLerp(orange800, other.orange800, t)!,
      orange900: colorsLerp(orange900, other.orange900, t)!,
      orange1000: colorsLerp(orange1000, other.orange1000, t)!,
      pink100: colorsLerp(pink100, other.pink100, t)!,
      pink200: colorsLerp(pink200, other.pink200, t)!,
      pink300: colorsLerp(pink300, other.pink300, t)!,
      pink400: colorsLerp(pink400, other.pink400, t)!,
      pink500: colorsLerp(pink500, other.pink500, t)!,
      pink600: colorsLerp(pink600, other.pink600, t)!,
      pink700: colorsLerp(pink700, other.pink700, t)!,
      pink800: colorsLerp(pink800, other.pink800, t)!,
      pink900: colorsLerp(pink900, other.pink900, t)!,
      pink1000: colorsLerp(pink1000, other.pink1000, t)!,
      yellow100: colorsLerp(yellow100, other.yellow100, t)!,
      yellow200: colorsLerp(yellow200, other.yellow200, t)!,
      yellow300: colorsLerp(yellow300, other.yellow300, t)!,
      yellow400: colorsLerp(yellow400, other.yellow400, t)!,
      yellow500: colorsLerp(yellow500, other.yellow500, t)!,
      yellow600: colorsLerp(yellow600, other.yellow600, t)!,
      yellow700: colorsLerp(yellow700, other.yellow700, t)!,
      yellow800: colorsLerp(yellow800, other.yellow800, t)!,
      yellow900: colorsLerp(yellow900, other.yellow900, t)!,
      yellow1000: colorsLerp(yellow1000, other.yellow1000, t)!,
      red100: colorsLerp(red100, other.red100, t)!,
      red200: colorsLerp(red200, other.red200, t)!,
      red300: colorsLerp(red300, other.red300, t)!,
      red400: colorsLerp(red400, other.red400, t)!,
      red500: colorsLerp(red500, other.red500, t)!,
      red600: colorsLerp(red600, other.red600, t)!,
      red700: colorsLerp(red700, other.red700, t)!,
      red800: colorsLerp(red800, other.red800, t)!,
      red900: colorsLerp(red900, other.red900, t)!,
      red1000: colorsLerp(red1000, other.red1000, t)!,
      alpha: colorsLerp(alpha, other.alpha, t)!,
      alphaBrand: colorsLerp(alphaBrand, other.alphaBrand, t)!,
      alphaRed: colorsLerp(alphaRed, other.alphaRed, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', "BaconBasePrimitiveColors"));
    properties.add(ColorProperty('neutral0', neutral0));
    properties.add(ColorProperty('neutral100', neutral100));
    properties.add(ColorProperty('neutral200', neutral200));
    properties.add(ColorProperty('neutral300', neutral300));
    properties.add(ColorProperty('neutral400', neutral400));
    properties.add(ColorProperty('neutral500', neutral500));
    properties.add(ColorProperty('neutral600', neutral600));
    properties.add(ColorProperty('neutral700', neutral700));
    properties.add(ColorProperty('neutral800', neutral800));
    properties.add(ColorProperty('neutral900', neutral900));
    properties.add(ColorProperty('neutral1000', neutral1000));
    properties.add(ColorProperty('neutral1100', neutral1100));
    properties.add(ColorProperty('brand100', brand100));
    properties.add(ColorProperty('brand200', brand200));
    properties.add(ColorProperty('brand300', brand300));
    properties.add(ColorProperty('brand400', brand400));
    properties.add(ColorProperty('brand500', brand500));
    properties.add(ColorProperty('brand600', brand600));
    properties.add(ColorProperty('brand700', brand700));
    properties.add(ColorProperty('brand800', brand800));
    properties.add(ColorProperty('brand900', brand900));
    properties.add(ColorProperty('brand1000', brand1000));
    properties.add(ColorProperty('blue100', blue100));
    properties.add(ColorProperty('blue200', blue200));
    properties.add(ColorProperty('blue300', blue300));
    properties.add(ColorProperty('blue400', blue400));
    properties.add(ColorProperty('blue500', blue500));
    properties.add(ColorProperty('blue600', blue600));
    properties.add(ColorProperty('blue700', blue700));
    properties.add(ColorProperty('blue800', blue800));
    properties.add(ColorProperty('blue900', blue900));
    properties.add(ColorProperty('blue1000', blue1000));
    properties.add(ColorProperty('purple100', purple100));
    properties.add(ColorProperty('purple200', purple200));
    properties.add(ColorProperty('purple300', purple300));
    properties.add(ColorProperty('purple400', purple400));
    properties.add(ColorProperty('purple500', purple500));
    properties.add(ColorProperty('purple600', purple600));
    properties.add(ColorProperty('purple700', purple700));
    properties.add(ColorProperty('purple800', purple800));
    properties.add(ColorProperty('purple900', purple900));
    properties.add(ColorProperty('purple1000', purple1000));
    properties.add(ColorProperty('green100', green100));
    properties.add(ColorProperty('green200', green200));
    properties.add(ColorProperty('green300', green300));
    properties.add(ColorProperty('green400', green400));
    properties.add(ColorProperty('green500', green500));
    properties.add(ColorProperty('green600', green600));
    properties.add(ColorProperty('green700', green700));
    properties.add(ColorProperty('green800', green800));
    properties.add(ColorProperty('green900', green900));
    properties.add(ColorProperty('green1000', green1000));
    properties.add(ColorProperty('orange100', orange100));
    properties.add(ColorProperty('orange200', orange200));
    properties.add(ColorProperty('orange300', orange300));
    properties.add(ColorProperty('orange400', orange400));
    properties.add(ColorProperty('orange500', orange500));
    properties.add(ColorProperty('orange600', orange600));
    properties.add(ColorProperty('orange700', orange700));
    properties.add(ColorProperty('orange800', orange800));
    properties.add(ColorProperty('orange900', orange900));
    properties.add(ColorProperty('orange1000', orange1000));
    properties.add(ColorProperty('pink100', pink100));
    properties.add(ColorProperty('pink200', pink200));
    properties.add(ColorProperty('pink300', pink300));
    properties.add(ColorProperty('pink400', pink400));
    properties.add(ColorProperty('pink500', pink500));
    properties.add(ColorProperty('pink600', pink600));
    properties.add(ColorProperty('pink700', pink700));
    properties.add(ColorProperty('pink800', pink800));
    properties.add(ColorProperty('pink900', pink900));
    properties.add(ColorProperty('pink1000', pink1000));
    properties.add(ColorProperty('yellow100', yellow100));
    properties.add(ColorProperty('yellow200', yellow200));
    properties.add(ColorProperty('yellow300', yellow300));
    properties.add(ColorProperty('yellow400', yellow400));
    properties.add(ColorProperty('yellow500', yellow500));
    properties.add(ColorProperty('yellow600', yellow600));
    properties.add(ColorProperty('yellow700', yellow700));
    properties.add(ColorProperty('yellow800', yellow800));
    properties.add(ColorProperty('yellow900', yellow900));
    properties.add(ColorProperty('yellow1000', yellow1000));
    properties.add(ColorProperty('red100', red100));

    properties.add(ColorProperty('red200', red200));
    properties.add(ColorProperty('red300', red300));
    properties.add(ColorProperty('red400', red400));
    properties.add(ColorProperty('red500', red500));
    properties.add(ColorProperty('red600', red600));
    properties.add(ColorProperty('red700', red700));
    properties.add(ColorProperty('red800', red800));
    properties.add(ColorProperty('red900', red900));
    properties.add(ColorProperty('red1000', red1000));
    properties.add(ColorProperty('alpha', alpha));
    properties.add(ColorProperty('alphaBrand', alphaBrand));
    properties.add(ColorProperty('alphaRed', alphaRed));
  }
}
