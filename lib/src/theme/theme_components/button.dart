import 'dart:ui';

import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:bacon/src/widgets/bacon_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// The theme for BaconButton.
///
/// Use this class to override some properties to all buttons in just one place.
@immutable
class BaconButtonTheme {
  const BaconButtonTheme({
    this.merge = true,
    this.applyIconColorFilter = true,
    this.cursor,
    this.size = BaconButtonSize.regular,
    this.sizesTheme,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.foregroundColor,
    this.hoverForegroundColor,
    this.border,
    this.radius,
    this.pressedBackgroundColor,
    this.pressedForegroundColor,
    this.shadows,
    this.gradient,
    this.textDecoration,
    this.hoverTextDecoration,
    this.decoration,
    this.width,
    this.height,
  });
  final bool merge;
  final bool applyIconColorFilter;
  final MouseCursor? cursor;
  final BaconButtonSize size;
  final BaconButtonSizesTheme? sizesTheme;
  final Color? backgroundColor;
  final Color? hoverBackgroundColor;
  final Color? foregroundColor;
  final Color? hoverForegroundColor;
  final BoxBorder? border;
  final BorderRadius? radius;
  final Color? pressedBackgroundColor;
  final Color? pressedForegroundColor;
  final List<BoxShadow>? shadows;
  final Gradient? gradient;
  final TextDecoration? textDecoration;
  final TextDecoration? hoverTextDecoration;
  final BaconDecoration? decoration;
  final double? width;
  final double? height;

  static BaconButtonTheme lerp(
    BaconButtonTheme a,
    BaconButtonTheme b,
    double t,
  ) {
    if (identical(a, b)) return a;
    return BaconButtonTheme(
      applyIconColorFilter: b.applyIconColorFilter,
      sizesTheme: BaconButtonSizesTheme.lerp(
        a.sizesTheme,
        b.sizesTheme,
        t,
      ),
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t),
      hoverBackgroundColor:
          Color.lerp(a.hoverBackgroundColor, b.hoverBackgroundColor, t),
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t),
      hoverForegroundColor:
          Color.lerp(a.hoverForegroundColor, b.hoverForegroundColor, t),
      border: b.border,
      radius: BorderRadius.lerp(a.radius, b.radius, t),
      pressedBackgroundColor:
          Color.lerp(a.pressedBackgroundColor, b.pressedBackgroundColor, t),
      pressedForegroundColor:
          Color.lerp(a.pressedForegroundColor, b.pressedForegroundColor, t),
      shadows: b.shadows,
      gradient: b.gradient,
      textDecoration: b.textDecoration,
      hoverTextDecoration: b.hoverTextDecoration,
      cursor: b.cursor,
      size: b.size,
      decoration: BaconDecoration.lerp(a.decoration, b.decoration, t),
      width: lerpDouble(a.width, b.width, t),
      height: lerpDouble(a.height, b.height, t),
    );
  }

  BaconButtonTheme copyWith({
    bool? applyIconColorFilter,
    MouseCursor? cursor,
    MouseCursor? disabledCursor,
    BaconButtonSize? size,
    BaconButtonSizesTheme? sizesTheme,
    Color? backgroundColor,
    Color? hoverBackgroundColor,
    Color? foregroundColor,
    Color? hoverForegroundColor,
    BoxBorder? border,
    BorderRadius? radius,
    Color? pressedBackgroundColor,
    Color? pressedForegroundColor,
    List<BoxShadow>? shadows,
    Gradient? gradient,
    TextDecoration? textDecoration,
    TextDecoration? hoverTextDecoration,
    BaconDecoration? decoration,
    double? width,
    double? height,
  }) {
    return BaconButtonTheme(
      applyIconColorFilter: applyIconColorFilter ?? this.applyIconColorFilter,
      cursor: cursor ?? this.cursor,
      size: size ?? this.size,
      sizesTheme: sizesTheme ?? this.sizesTheme,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      hoverBackgroundColor: hoverBackgroundColor ?? this.hoverBackgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      hoverForegroundColor: hoverForegroundColor ?? this.hoverForegroundColor,
      border: border ?? this.border,
      radius: radius ?? this.radius,
      pressedBackgroundColor:
          pressedBackgroundColor ?? this.pressedBackgroundColor,
      pressedForegroundColor:
          pressedForegroundColor ?? this.pressedForegroundColor,
      shadows: shadows ?? this.shadows,
      gradient: gradient ?? this.gradient,
      textDecoration: textDecoration ?? this.textDecoration,
      hoverTextDecoration: hoverTextDecoration ?? this.hoverTextDecoration,
      decoration: decoration ?? this.decoration,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  BaconButtonTheme mergeWith(BaconButtonTheme? other) {
    if (other == null) return this;
    if (!other.merge) return other;
    return copyWith(
      applyIconColorFilter: other.applyIconColorFilter,
      cursor: other.cursor,
      size: other.size,
      backgroundColor: other.backgroundColor,
      hoverBackgroundColor: other.hoverBackgroundColor,
      foregroundColor: other.foregroundColor,
      hoverForegroundColor: other.hoverForegroundColor,
      border: other.border,
      radius: other.radius,
      pressedBackgroundColor: other.pressedBackgroundColor,
      pressedForegroundColor: other.pressedForegroundColor,
      shadows: other.shadows,
      gradient: other.gradient,
      textDecoration: other.textDecoration,
      hoverTextDecoration: other.hoverTextDecoration,
      decoration: other.decoration,
      width: other.width,
      height: other.height,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BaconButtonTheme &&
        other.applyIconColorFilter == applyIconColorFilter &&
        other.cursor == cursor &&
        other.size == size &&
        other.sizesTheme == sizesTheme &&
        other.backgroundColor == backgroundColor &&
        other.hoverBackgroundColor == hoverBackgroundColor &&
        other.foregroundColor == foregroundColor &&
        other.hoverForegroundColor == hoverForegroundColor &&
        other.border == border &&
        other.radius == radius &&
        other.pressedBackgroundColor == pressedBackgroundColor &&
        other.pressedForegroundColor == pressedForegroundColor &&
        listEquals(other.shadows, shadows) &&
        other.gradient == gradient &&
        other.textDecoration == textDecoration &&
        other.hoverTextDecoration == hoverTextDecoration &&
        other.decoration == decoration &&
        other.width == width &&
        other.height == height;
  }

  @override
  int get hashCode {
    return applyIconColorFilter.hashCode ^
        cursor.hashCode ^
        size.hashCode ^
        sizesTheme.hashCode ^
        backgroundColor.hashCode ^
        hoverBackgroundColor.hashCode ^
        foregroundColor.hashCode ^
        hoverForegroundColor.hashCode ^
        border.hashCode ^
        radius.hashCode ^
        pressedBackgroundColor.hashCode ^
        pressedForegroundColor.hashCode ^
        shadows.hashCode ^
        gradient.hashCode ^
        textDecoration.hashCode ^
        hoverTextDecoration.hashCode ^
        decoration.hashCode ^
        width.hashCode ^
        height.hashCode;
  }
}

// The theme for an individual size of BaconButton.
@immutable
class BaconButtonSizeTheme {
  const BaconButtonSizeTheme({
    this.merge = true,
    required this.height,
    required this.padding,
    this.width,
  });
  final bool merge;
  final double height;
  final EdgeInsets padding;
  final double? width;

  BaconButtonSizeTheme copyWith({
    double? height,
    EdgeInsets? padding,
    double? width,
  }) {
    return BaconButtonSizeTheme(
      height: height ?? this.height,
      padding: padding ?? this.padding,
      width: width ?? this.width,
    );
  }

  static BaconButtonSizeTheme? lerp(
    BaconButtonSizeTheme? a,
    BaconButtonSizeTheme? b,
    double t,
  ) {
    if (identical(a, b)) return a;
    return BaconButtonSizeTheme(
      height: lerpDouble(a?.height, b?.height, t)!,
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t)!,
      width: lerpDouble(a?.width, b?.width, t),
    );
  }

  BaconButtonSizeTheme mergeWith(BaconButtonSizeTheme? other) {
    if (other == null) return this;
    if (!other.merge) return other;
    return copyWith(
      height: other.height,
      padding: other.padding,
      width: other.width,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BaconButtonSizeTheme &&
        other.height == height &&
        other.padding == padding &&
        other.width == width;
  }

  @override
  int get hashCode => height.hashCode ^ padding.hashCode ^ width.hashCode;
}

// The theme for the predefined sizes of BaconButton.
@immutable
class BaconButtonSizesTheme {
  const BaconButtonSizesTheme({
    this.merge = true,
    this.regular,
    this.sm,
    this.lg,
    this.icon,
  });
  final bool merge;
  final BaconButtonSizeTheme? regular;
  final BaconButtonSizeTheme? sm;
  final BaconButtonSizeTheme? lg;
  final BaconButtonSizeTheme? icon;

  static BaconButtonSizesTheme? lerp(
    BaconButtonSizesTheme? a,
    BaconButtonSizesTheme? b,
    double t,
  ) {
    if (identical(a, b)) return a;
    return BaconButtonSizesTheme(
      regular: BaconButtonSizeTheme.lerp(a?.regular, b?.regular, t),
      sm: BaconButtonSizeTheme.lerp(a?.sm, b?.sm, t),
      lg: BaconButtonSizeTheme.lerp(a?.lg, b?.lg, t),
      icon: BaconButtonSizeTheme.lerp(a?.icon, b?.icon, t),
    );
  }

  BaconButtonSizesTheme copyWith({
    BaconButtonSizeTheme? regular,
    BaconButtonSizeTheme? sm,
    BaconButtonSizeTheme? lg,
    BaconButtonSizeTheme? icon,
  }) {
    return BaconButtonSizesTheme(
      regular: regular ?? this.regular,
      sm: sm ?? this.sm,
      lg: lg ?? this.lg,
      icon: icon ?? this.icon,
    );
  }

  BaconButtonSizesTheme mergeWith(BaconButtonSizesTheme? other) {
    if (other == null) return this;
    if (!other.merge) return other;
    return copyWith(
      regular: other.regular,
      sm: other.sm,
      lg: other.lg,
      icon: other.icon,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconButtonSizesTheme &&
        other.regular == regular &&
        other.sm == sm &&
        other.lg == lg &&
        other.icon == icon;
  }

  @override
  int get hashCode =>
      regular.hashCode ^ sm.hashCode ^ lg.hashCode ^ icon.hashCode;
}
