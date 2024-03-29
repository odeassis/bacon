import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTextStyles extends ThemeExtension<BaconTextStyles>
    with DiagnosticableTreeMixin {
  final TextStyle x2l;
  final TextStyle xl;
  final TextStyle lg;
  final TextStyle md;
  final TextStyle sm;
  final TextStyle xs;
  final TextStyle x2s;

  const BaconTextStyles({
    required this.x2l,
    required this.xl,
    required this.lg,
    required this.md,
    required this.sm,
    required this.xs,
    required this.x2s,
  });

  @override
  BaconTextStyles copyWith({
    TextStyle? x2l,
    TextStyle? xl,
    TextStyle? lg,
    TextStyle? md,
    TextStyle? sm,
    TextStyle? xs,
    TextStyle? x2s,
  }) {
    return BaconTextStyles(
      x2l: x2l ?? this.x2l,
      xl: xl ?? this.xl,
      lg: lg ?? this.lg,
      md: md ?? this.md,
      sm: sm ?? this.sm,
      xs: xs ?? this.xs,
      x2s: x2s ?? this.x2s,
    );
  }

  @override
  BaconTextStyles lerp(
      covariant ThemeExtension<BaconTextStyles>? other, double t) {
    if (other is! BaconTextStyles) return this;

    return BaconTextStyles(
      x2l: TextStyle.lerp(x2l, other.x2l, t)!,
      xl: TextStyle.lerp(xl, other.xl, t)!,
      lg: TextStyle.lerp(lg, other.lg, t)!,
      md: TextStyle.lerp(md, other.md, t)!,
      sm: TextStyle.lerp(sm, other.sm, t)!,
      xs: TextStyle.lerp(xs, other.xs, t)!,
      x2s: TextStyle.lerp(x2s, other.x2s, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconTextStyles"));
    properties.add(DiagnosticsProperty("x2l", x2l));
    properties.add(DiagnosticsProperty("xl", xl));
    properties.add(DiagnosticsProperty("lg", lg));
    properties.add(DiagnosticsProperty("md", md));
    properties.add(DiagnosticsProperty("sm", sm));
    properties.add(DiagnosticsProperty("xs", xs));
    properties.add(DiagnosticsProperty("x2s", x2s));
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
      x2l: applyProps(x2l),
      xl: applyProps(xl),
      lg: applyProps(lg),
      md: applyProps(md),
      sm: applyProps(sm),
      xs: applyProps(xs),
      x2s: applyProps(x2s),
    );
  }
}
