import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTextStyles extends ThemeExtension<BaconTextStyles>
    with DiagnosticableTreeMixin {
  final TextStyle xxl;
  final TextStyle xl;
  final TextStyle lg;
  final TextStyle md;
  final TextStyle xs;
  final TextStyle xxs;

  const BaconTextStyles({
    required this.xxl,
    required this.xl,
    required this.lg,
    required this.md,
    required this.xs,
    required this.xxs,
  });

  @override
  BaconTextStyles copyWith({
    TextStyle? xxl,
    TextStyle? xl,
    TextStyle? lg,
    TextStyle? md,
    TextStyle? xs,
    TextStyle? xxs,
  }) {
    return BaconTextStyles(
      xxl: xxl ?? this.xxl,
      xl: xl ?? this.xl,
      lg: lg ?? this.lg,
      md: md ?? this.md,
      xs: xs ?? this.xs,
      xxs: xxs ?? this.xxs,
    );
  }

  @override
  BaconTextStyles lerp(
      covariant ThemeExtension<BaconTextStyles>? other, double t) {
    if (other is! BaconTextStyles) return this;

    return BaconTextStyles(
      xxl: TextStyle.lerp(xxl, other.xxl, t)!,
      xl: TextStyle.lerp(xl, other.xl, t)!,
      lg: TextStyle.lerp(lg, other.lg, t)!,
      md: TextStyle.lerp(md, other.md, t)!,
      xs: TextStyle.lerp(xs, other.xs, t)!,
      xxs: TextStyle.lerp(xxs, other.xxs, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconTextStyles"));
    properties.add(DiagnosticsProperty("xxl", xxl));
    properties.add(DiagnosticsProperty("xl", xl));
    properties.add(DiagnosticsProperty("lg", lg));
    properties.add(DiagnosticsProperty("md", md));
    properties.add(DiagnosticsProperty("xs", xs));
    properties.add(DiagnosticsProperty("xxs", xxs));
  }

  BaconTextStyles apply({
    Color? backgroundColor,
    Color? color,
    Color? decorationColor,
    double decorationThicknessDelta = 0.0,
    double decorationThicknessFactor = 1.0,
    double fontSizeDelta = 0.0,
    double fontSizeFactor = 1.0,
    double heightDelta = 0.0,
    double heightFactor = 1.0,
    double letterSpacingDelta = 0.0,
    double letterSpacingFactor = 1.0,
    FontStyle? fontStyle,
    int fontWeightDelta = 0,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    List<Shadow>? shadows,
    List<String>? fontFamilyFallback,
    Locale? locale,
    String? fontFamily,
    String? package,
    TextBaseline? textBaseline,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextLeadingDistribution? leadingDistribution,
    TextOverflow? overflow,
  }) {
    TextStyle applyProps(TextStyle style) {
      return style.apply(
        backgroundColor: backgroundColor,
        decorationThicknessDelta: decorationThicknessDelta,
        decorationThicknessFactor: decorationThicknessFactor,
        color: color,
        decorationColor: decorationColor,
        fontSizeDelta: fontSizeDelta,
        fontSizeFactor: fontSizeFactor,
        heightDelta: heightDelta,
        heightFactor: heightFactor,
        letterSpacingDelta: letterSpacingDelta,
        letterSpacingFactor: letterSpacingFactor,
        fontFeatures: fontFeatures,
        fontStyle: fontStyle,
        fontWeightDelta: fontWeightDelta,
        fontVariations: fontVariations,
        shadows: shadows,
        fontFamilyFallback: fontFamilyFallback,
        locale: locale,
        fontFamily: fontFamily,
        package: package,
        textBaseline: textBaseline,
        decoration: decoration,
        decorationStyle: decorationStyle,
        leadingDistribution: leadingDistribution,
        overflow: overflow,
      );
    }

    return BaconTextStyles(
      xxl: applyProps(xxl),
      xl: applyProps(xl),
      lg: applyProps(lg),
      md: applyProps(md),
      xs: applyProps(xs),
      xxs: applyProps(xxs),
    );
  }
}
