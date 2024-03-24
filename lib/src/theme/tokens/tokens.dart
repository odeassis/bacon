import 'package:bacon/src/theme/tokens/modes/background.dart';
import 'package:bacon/src/theme/tokens/modes/base.dart';
import 'package:bacon/src/theme/tokens/modes/border.dart';
import 'package:bacon/src/theme/tokens/modes/content.dart';
import 'package:bacon/src/theme/tokens/scale/avatar.dart';
import 'package:bacon/src/theme/tokens/scale/base.dart';
import 'package:bacon/src/theme/tokens/scale/component.dart';
import 'package:bacon/src/theme/tokens/scale/gap.dart';
import 'package:bacon/src/theme/tokens/scale/gap_negative.dart';
import 'package:bacon/src/theme/tokens/scale/icon.dart';
import 'package:bacon/src/theme/tokens/scale/padding.dart';
import 'package:bacon/src/theme/tokens/shape/base.dart';
import 'package:bacon/src/theme/tokens/shape/border_radius.dart';
import 'package:bacon/src/theme/tokens/typography/base.dart';
import 'package:bacon/src/theme/tokens/typography/default.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTokes extends ThemeExtension<BaconTokes>
    with DiagnosticableTreeMixin {
  static BaconTokes light = BaconTokes(
    borderColor: BaconDefaultBorderColors.light(),
    backgroundColor: BaconDefaultBackgroundColors.light(),
    contentColor: BaconDefaultContentColors.light(),
    avatarScale: const BaconDefaultAvatarScale.defaultScale(),
    componentScale: const BaconDefaultComponentScale.defaultScale(),
    gapScale: const BaconDefaultGapScale.defaultScale(),
    gapNegativeScale: const BaconDefaultGapNegativeScale.defaultScale(),
    iconScale: const BaconDefaultIconScale.defaultScale(),
    paddingScale: const BaconDefaultPaddingScale.defaultScale(),
    borderRadius: const BaconDefaultBorderRadius.defaultShape(),
    typography: BaconBaseTypography(
      display: BaconDefaultTextStyle.display,
      headline: BaconDefaultTextStyle.headline,
      paragraph: BaconDefaultTextStyle.paragraph,
      label: BaconDefaultTextStyle.label,
    ),
  );

  static BaconTokes dark = BaconTokes(
    borderColor: BaconDefaultBorderColors.dark(),
    backgroundColor: BaconDefaultBackgroundColors.dark(),
    contentColor: BaconDefaultContentColors.dark(),
    avatarScale: const BaconDefaultAvatarScale.defaultScale(),
    componentScale: const BaconDefaultComponentScale.defaultScale(),
    gapScale: const BaconDefaultGapScale.defaultScale(),
    gapNegativeScale: const BaconDefaultGapNegativeScale.defaultScale(),
    iconScale: const BaconDefaultIconScale.defaultScale(),
    paddingScale: const BaconDefaultPaddingScale.defaultScale(),
    borderRadius: const BaconDefaultBorderRadius.defaultShape(),
    typography: BaconBaseTypography(
      display: BaconDefaultTextStyle.display,
      headline: BaconDefaultTextStyle.headline,
      paragraph: BaconDefaultTextStyle.paragraph,
      label: BaconDefaultTextStyle.label,
    ),
  );

  final BaconBaseColor borderColor;
  final BaconBaseColor backgroundColor;
  final BaconBaseColor contentColor;
  final BaconBaseScale avatarScale;
  final BaconBaseScale componentScale;
  final BaconBaseScale gapScale;
  final BaconBaseScale gapNegativeScale;
  final BaconBaseScale iconScale;
  final BaconBaseScale paddingScale;
  final BaconBaseShape borderRadius;
  final BaconBaseTypography typography;

  const BaconTokes({
    required this.borderColor,
    required this.backgroundColor,
    required this.contentColor,
    required this.avatarScale,
    required this.componentScale,
    required this.gapScale,
    required this.gapNegativeScale,
    required this.iconScale,
    required this.paddingScale,
    required this.borderRadius,
    required this.typography,
  });

  @override
  BaconTokes copyWith({
    BaconBaseColor? borderColor,
    BaconBaseColor? backgroundColor,
    BaconBaseColor? contentColor,
    BaconBaseScale? avatarScale,
    BaconBaseScale? componentScale,
    BaconBaseScale? gapScale,
    BaconBaseScale? gapNegativeScale,
    BaconBaseScale? iconScale,
    BaconBaseScale? paddingScale,
    BaconBaseShape? borderRadius,
    BaconBaseTypography? typography,
  }) {
    return BaconTokes(
      borderColor: borderColor ?? this.borderColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      contentColor: contentColor ?? this.contentColor,
      avatarScale: avatarScale ?? this.avatarScale,
      componentScale: componentScale ?? this.componentScale,
      gapScale: gapScale ?? this.gapScale,
      gapNegativeScale: gapNegativeScale ?? this.gapNegativeScale,
      iconScale: iconScale ?? this.iconScale,
      paddingScale: paddingScale ?? this.paddingScale,
      borderRadius: borderRadius ?? this.borderRadius,
      typography: typography ?? this.typography,
    );
  }

  @override
  BaconTokes lerp(
    ThemeExtension<BaconTokes>? other,
    double t,
  ) {
    if (other is! BaconTokes) return this;
    return BaconTokes(
      borderColor: borderColor.lerp(other.borderColor, t),
      backgroundColor: backgroundColor.lerp(other.backgroundColor, t),
      contentColor: contentColor.lerp(other.contentColor, t),
      avatarScale: avatarScale.lerp(other.avatarScale, t),
      componentScale: componentScale.lerp(other.componentScale, t),
      gapScale: gapScale.lerp(other.gapScale, t),
      gapNegativeScale: gapNegativeScale.lerp(other.gapNegativeScale, t),
      iconScale: iconScale.lerp(other.iconScale, t),
      paddingScale: paddingScale.lerp(other.paddingScale, t),
      borderRadius: borderRadius.lerp(other.borderRadius, t),
      typography: typography.lerp(other.typography, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "baconTokes"))
      ..add(borderColor.toDiagnosticsNode(name: 'borderColor'))
      ..add(backgroundColor.toDiagnosticsNode(name: 'backgroundColor'))
      ..add(contentColor.toDiagnosticsNode(name: 'contentColor'))
      ..add(avatarScale.toDiagnosticsNode(name: 'avatarScale'))
      ..add(componentScale.toDiagnosticsNode(name: 'componentScale'))
      ..add(gapScale.toDiagnosticsNode(name: 'gapScale'))
      ..add(gapNegativeScale.toDiagnosticsNode(name: 'gapNegativeScale'))
      ..add(iconScale.toDiagnosticsNode(name: 'iconScale'))
      ..add(paddingScale.toDiagnosticsNode(name: 'paddingScale'))
      ..add(borderRadius.toDiagnosticsNode(name: 'borderRadius'))
      ..add(typography.toDiagnosticsNode(name: 'typography'));
  }
}
