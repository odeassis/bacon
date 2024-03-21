import 'package:bacon/src/theme/text_theme/base.dart';
import 'package:flutter/material.dart';

class BaconTextThemeData extends BaconBaseTextTheme {
  const BaconTextThemeData({
    this.merge = true,
    required super.displayXSmall,
    required super.headlineXXLarge,
    required super.headlineXLarge,
    required super.headlineXSmall,
    required super.bodyXSmall,
    required super.labelXSmall,
    required super.displayLarge,
    required super.displayMedium,
    required super.displaySmall,
    required super.headlineLarge,
    required super.headlineMedium,
    required super.headlineSmall,
    required super.bodyLarge,
    required super.bodyMedium,
    required super.bodySmall,
    required super.labelLarge,
    required super.labelMedium,
    required super.labelSmall,
  });

  final bool merge;

  BaconTextThemeData copyWith({
    TextStyle? displayXSmall,
    TextStyle? headlineXXLarge,
    TextStyle? headlineXLarge,
    TextStyle? headlineXSmall,
    TextStyle? bodyXSmall,
    TextStyle? labelXSmall,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return BaconTextThemeData(
      displayXSmall: displayXSmall ?? this.displayXSmall,
      headlineXXLarge: headlineXXLarge ?? this.headlineXXLarge,
      headlineXLarge: headlineXLarge ?? this.headlineXLarge,
      headlineXSmall: headlineXSmall ?? this.headlineXSmall,
      bodyXSmall: bodyXSmall ?? this.bodyXSmall,
      labelXSmall: labelXSmall ?? this.labelXSmall,
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  static BaconTextThemeData lerp(
    BaconTextThemeData? a,
    BaconTextThemeData? b,
    double t,
  ) {
    if (identical(a, b) && a != null) {
      return a;
    }
    return BaconTextThemeData(
      displayXSmall: TextStyle.lerp(a!.displayXSmall, b!.displayXSmall, t)!,
      headlineXXLarge: TextStyle.lerp(a.headlineXXLarge, b.headlineXXLarge, t)!,
      headlineXLarge: TextStyle.lerp(a.headlineXLarge, b.headlineXLarge, t)!,
      headlineXSmall: TextStyle.lerp(a.headlineXSmall, b.headlineXSmall, t)!,
      bodyXSmall: TextStyle.lerp(a.bodyXSmall, b.bodyXSmall, t)!,
      labelXSmall: TextStyle.lerp(a.labelXSmall, b.labelXSmall, t)!,
      displayLarge: TextStyle.lerp(a.displayLarge, b.displayLarge, t)!,
      displayMedium: TextStyle.lerp(a.displayMedium, b.displayMedium, t)!,
      displaySmall: TextStyle.lerp(a.displaySmall, b.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(a.headlineLarge, b.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(a.headlineMedium, b.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(a.headlineSmall, b.headlineSmall, t)!,
      bodyLarge: TextStyle.lerp(a.bodyLarge, b.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(a.bodyMedium, b.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(a.bodySmall, b.bodySmall, t)!,
      labelLarge: TextStyle.lerp(a.labelLarge, b.labelLarge, t)!,
      labelMedium: TextStyle.lerp(a.labelMedium, b.labelMedium, t)!,
      labelSmall: TextStyle.lerp(a.labelSmall, b.labelSmall, t)!,
    );
  }

  BaconTextThemeData mergeWith(BaconTextThemeData? other) {
    if (other == null) {
      return this;
    }
    if (!other.merge) {
      return other;
    }
    return copyWith(
      displayXSmall: displayXSmall.merge(other.displayXSmall),
      headlineXXLarge: headlineXXLarge.merge(other.displayXSmall),
      headlineXLarge: headlineXLarge.merge(other.displayXSmall),
      headlineXSmall: headlineXSmall.merge(other.displayXSmall),
      bodyXSmall: bodyXSmall.merge(other.displayXSmall),
      labelXSmall: labelXSmall.merge(other.displayXSmall),
      displayLarge: displayLarge.merge(other.displayXSmall),
      displayMedium: displayMedium.merge(other.displayXSmall),
      displaySmall: displaySmall.merge(other.displayXSmall),
      headlineLarge: headlineLarge.merge(other.displayXSmall),
      headlineMedium: headlineMedium.merge(other.displayXSmall),
      headlineSmall: headlineSmall.merge(other.displayXSmall),
      bodyLarge: bodyLarge.merge(other.displayXSmall),
      bodyMedium: bodyMedium.merge(other.displayXSmall),
      bodySmall: bodySmall.merge(other.displayXSmall),
      labelLarge: labelLarge.merge(other.displayXSmall),
      labelMedium: labelMedium.merge(other.displayXSmall),
      labelSmall: labelSmall.merge(other.displayXSmall),
    );
  }

  BaconTextThemeData apply({
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    double fontSizeFactor = 1.0,
    double fontSizeDelta = 0.0,
    Color? displayColor, // Change color source
    Color? bodyColor, // Change color source
    Color? decorationColor, // Change color source
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
  }) {
    return copyWith(
      displayXSmall: displayXSmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: displayXSmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? displayXSmall.color,
        decoration: decoration ?? displayXSmall.decoration,
        decorationColor: decorationColor ?? displayXSmall.decorationColor,
        decorationStyle: decorationStyle ?? displayXSmall.decorationStyle,
      ),
      headlineXXLarge: headlineXXLarge.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: headlineXXLarge.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? headlineXXLarge.color,
        decoration: decoration ?? headlineXXLarge.decoration,
        decorationColor: decorationColor ?? headlineXXLarge.decorationColor,
        decorationStyle: decorationStyle ?? headlineXXLarge.decorationStyle,
      ),
      headlineXLarge: headlineXLarge.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: headlineXLarge.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? headlineXLarge.color,
        decoration: decoration ?? headlineXLarge.decoration,
        decorationColor: decorationColor ?? headlineXLarge.decorationColor,
        decorationStyle: decorationStyle ?? headlineXLarge.decorationStyle,
      ),
      headlineXSmall: headlineXSmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: headlineXSmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? headlineXSmall.color,
        decoration: decoration ?? headlineXSmall.decoration,
        decorationColor: decorationColor ?? headlineXSmall.decorationColor,
        decorationStyle: decorationStyle ?? headlineXSmall.decorationStyle,
      ),
      bodyXSmall: bodyXSmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: bodyXSmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? bodyXSmall.color,
        decoration: decoration ?? bodyXSmall.decoration,
        decorationColor: decorationColor ?? bodyXSmall.decorationColor,
        decorationStyle: decorationStyle ?? bodyXSmall.decorationStyle,
      ),
      labelXSmall: labelXSmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: labelXSmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? labelXSmall.color,
        decoration: decoration ?? labelXSmall.decoration,
        decorationColor: decorationColor ?? labelXSmall.decorationColor,
        decorationStyle: decorationStyle ?? labelXSmall.decorationStyle,
      ),
      displayLarge: displayLarge.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: displayLarge.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? displayLarge.color,
        decoration: decoration ?? displayLarge.decoration,
        decorationColor: decorationColor ?? displayLarge.decorationColor,
        decorationStyle: decorationStyle ?? displayLarge.decorationStyle,
      ),
      displayMedium: displayMedium.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: displayMedium.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? displayMedium.color,
        decoration: decoration ?? displayMedium.decoration,
        decorationColor: decorationColor ?? displayMedium.decorationColor,
        decorationStyle: decorationStyle ?? displayMedium.decorationStyle,
      ),
      displaySmall: displaySmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: displaySmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? displaySmall.color,
        decoration: decoration ?? displaySmall.decoration,
        decorationColor: decorationColor ?? displaySmall.decorationColor,
        decorationStyle: decorationStyle ?? displaySmall.decorationStyle,
      ),
      headlineLarge: headlineLarge.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: headlineLarge.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? headlineLarge.color,
        decoration: decoration ?? headlineLarge.decoration,
        decorationColor: decorationColor ?? headlineLarge.decorationColor,
        decorationStyle: decorationStyle ?? headlineLarge.decorationStyle,
      ),
      headlineMedium: headlineMedium.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: headlineMedium.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? headlineMedium.color,
        decoration: decoration ?? headlineMedium.decoration,
        decorationColor: decorationColor ?? headlineMedium.decorationColor,
        decorationStyle: decorationStyle ?? headlineMedium.decorationStyle,
      ),
      headlineSmall: headlineSmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: headlineSmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: displayColor ?? headlineSmall.color,
        decoration: decoration ?? headlineSmall.decoration,
        decorationColor: decorationColor ?? headlineSmall.decorationColor,
        decorationStyle: decorationStyle ?? headlineSmall.decorationStyle,
      ),
      bodyLarge: bodyLarge.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: bodyLarge.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? bodyLarge.color,
        decoration: decoration ?? bodyLarge.decoration,
        decorationColor: decorationColor ?? bodyLarge.decorationColor,
        decorationStyle: decorationStyle ?? bodyLarge.decorationStyle,
      ),
      bodyMedium: bodyMedium.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: bodyMedium.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? bodyMedium.color,
        decoration: decoration ?? bodyMedium.decoration,
        decorationColor: decorationColor ?? bodyMedium.decorationColor,
        decorationStyle: decorationStyle ?? bodyMedium.decorationStyle,
      ),
      bodySmall: bodySmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: bodySmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? bodySmall.color,
        decoration: decoration ?? bodySmall.decoration,
        decorationColor: decorationColor ?? bodySmall.decorationColor,
        decorationStyle: decorationStyle ?? bodySmall.decorationStyle,
      ),
      labelLarge: labelLarge.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: labelLarge.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? labelLarge.color,
        decoration: decoration ?? labelLarge.decoration,
        decorationColor: decorationColor ?? labelLarge.decorationColor,
        decorationStyle: decorationStyle ?? labelLarge.decorationStyle,
      ),
      labelMedium: labelMedium.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: labelMedium.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? labelMedium.color,
        decoration: decoration ?? labelMedium.decoration,
        decorationColor: decorationColor ?? labelMedium.decorationColor,
        decorationStyle: decorationStyle ?? labelMedium.decorationStyle,
      ),
      labelSmall: labelSmall.copyWith(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        fontSize: labelSmall.fontSize! * fontSizeFactor + fontSizeDelta,
        color: bodyColor ?? labelSmall.color,
        decoration: decoration ?? labelSmall.decoration,
        decorationColor: decorationColor ?? labelSmall.decorationColor,
        decorationStyle: decorationStyle ?? labelSmall.decorationStyle,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconTextThemeData &&
        other.displayXSmall == displayXSmall &&
        other.headlineXXLarge == headlineXXLarge &&
        other.headlineXLarge == headlineXLarge &&
        other.headlineXSmall == headlineXSmall &&
        other.bodyXSmall == bodyXSmall &&
        other.labelXSmall == labelXSmall &&
        other.displayLarge == displayLarge &&
        other.displayMedium == displayMedium &&
        other.displaySmall == displaySmall &&
        other.headlineLarge == headlineLarge &&
        other.headlineMedium == headlineMedium &&
        other.headlineSmall == headlineSmall &&
        other.bodyLarge == bodyLarge &&
        other.bodyMedium == bodyMedium &&
        other.bodySmall == bodySmall &&
        other.labelLarge == labelLarge &&
        other.labelMedium == labelMedium &&
        other.labelSmall == labelSmall;
  }

  @override
  int get hashCode {
    return displayXSmall.hashCode ^
        headlineXXLarge.hashCode ^
        headlineXLarge.hashCode ^
        headlineXSmall.hashCode ^
        bodyXSmall.hashCode ^
        labelXSmall.hashCode ^
        displayLarge.hashCode ^
        displayMedium.hashCode ^
        displaySmall.hashCode ^
        headlineLarge.hashCode ^
        headlineMedium.hashCode ^
        headlineSmall.hashCode ^
        bodyLarge.hashCode ^
        bodyMedium.hashCode ^
        bodySmall.hashCode ^
        labelLarge.hashCode ^
        labelMedium.hashCode ^
        labelSmall.hashCode;
  }
}
