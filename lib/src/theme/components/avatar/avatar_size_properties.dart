import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconAvatarSizeProperties
    extends ThemeExtension<BaconAvatarSizeProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;
  final double avatarSize;
  final double badgeMargin;
  final double badgeSize;
  final TextStyle textStyle;

  const BaconAvatarSizeProperties({
    required this.borderRadius,
    required this.avatarSize,
    required this.badgeMargin,
    required this.badgeSize,
    required this.textStyle,
  });

  @override
  BaconAvatarSizeProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? avatarSize,
    double? badgeMargin,
    double? badgeSize,
    TextStyle? textStyle,
  }) {
    return BaconAvatarSizeProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      avatarSize: avatarSize ?? this.avatarSize,
      badgeMargin: badgeMargin ?? this.badgeMargin,
      badgeSize: badgeSize ?? this.badgeSize,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BaconAvatarSizeProperties lerp(
      ThemeExtension<BaconAvatarSizeProperties>? other, double t) {
    if (other is! BaconAvatarSizeProperties) return this;
    return BaconAvatarSizeProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      avatarSize: lerpDouble(avatarSize, other.avatarSize, t)!,
      badgeMargin: lerpDouble(badgeMargin, other.badgeMargin, t)!,
      badgeSize: lerpDouble(badgeSize, other.badgeSize, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconAvatarSizeProperties"));
    properties.add(DoubleProperty('avatarSize', avatarSize));
    properties.add(DoubleProperty('badgeMargin', badgeMargin));
    properties.add(DoubleProperty('badgeSize', badgeSize));
    properties.add(DiagnosticsProperty('borderRadius', borderRadius));
    properties.add(DiagnosticsProperty('textStyle', textStyle));
  }
}
