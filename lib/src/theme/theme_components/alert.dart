import 'package:bacon/src/theme/theme_components/decorator.dart';
import 'package:bacon/src/widgets/bacon_alert.dart';
import 'package:flutter/material.dart';

@immutable
class BaconAlertTheme {
  const BaconAlertTheme({
    this.merge = true,
    this.backgroundColor,
    this.style,
    this.decoration,
    this.titleStyle,
    this.bodyStyle,
  });

  final bool merge;
  final Color? backgroundColor;
  final BaconAlertStyle? style;
  final BaconDecoration? decoration;
  final TextStyle? titleStyle;
  final TextStyle? bodyStyle;

  static BaconAlertTheme lerp(
    BaconAlertTheme a,
    BaconAlertTheme b,
    double t,
  ) {
    if (identical(a, b)) return a;
    return BaconAlertTheme(
      merge: b.merge,
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      decoration: BaconDecoration.lerp(a.decoration, b.decoration, t),
      titleStyle: TextStyle.lerp(a.titleStyle, b.titleStyle, t),
      bodyStyle: TextStyle.lerp(a.bodyStyle, b.bodyStyle, t),
    );
  }

  BaconAlertTheme copyWith({
    bool? merge,
    Color? backgroundColor,
    BaconAlertStyle? style,
    BaconDecoration? decoration,
    TextStyle? titleStyle,
    TextStyle? bodyStyle,
  }) {
    return BaconAlertTheme(
      merge: merge ?? this.merge,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      style: style ?? this.style,
      decoration: decoration ?? this.decoration,
      titleStyle: titleStyle ?? this.titleStyle,
      bodyStyle: bodyStyle ?? this.bodyStyle,
    );
  }

  BaconAlertTheme mergeWith(BaconAlertTheme? other) {
    if (other == null) return this;
    if (!other.merge) return other;
    return copyWith(
      merge: other.merge,
      backgroundColor: other.backgroundColor,
      style: other.style,
      decoration: other.decoration,
      titleStyle: other.titleStyle,
      bodyStyle: other.bodyStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BaconAlertTheme &&
        other.merge == merge &&
        other.backgroundColor == backgroundColor &&
        other.style == style &&
        other.decoration == decoration &&
        other.titleStyle == titleStyle &&
        other.bodyStyle == bodyStyle;
  }

  @override
  int get hashCode {
    return merge.hashCode ^
        backgroundColor.hashCode ^
        style.hashCode ^
        decoration.hashCode ^
        titleStyle.hashCode ^
        bodyStyle.hashCode;
  }
}
