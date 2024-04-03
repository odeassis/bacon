import 'package:bacon/bacon.dart';
import 'package:bacon/src/theme/components/alert/alert_theme.dart';
import 'package:bacon/src/theme/components/avatar/avatar_theme.dart';
import 'package:bacon/src/theme/components/badge/badge_theme.dart';
import 'package:bacon/src/theme/components/button/button_theme.dart';
import 'package:bacon/src/theme/components/divider/divider_theme.dart';
import 'package:bacon/src/theme/effects/effects_theme.dart';
import 'package:bacon/src/theme/tokens/opacities.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/component/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/gap/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/scale/padding/base.dart';
import 'package:bacon/src/theme/tokens/semantic_tokens/shape/radii/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaconTheme extends ThemeExtension<BaconTheme>
    with DiagnosticableTreeMixin {
  final BaconTokens tokens;
  final BaconBadgeTheme badgeTheme;
  final BaconAvatarTheme avatarTheme;
  final BaconAlertTheme alertTheme;
  final BaconOpacities opacities;
  final BaconEffectsTheme effects;
  final BaconButtonTheme buttonTheme;
  final BaconDividerTheme dividerTheme;

  BaconTheme({
    required this.tokens,
    BaconBadgeTheme? badgeTheme,
    BaconAvatarTheme? avatarTheme,
    BaconAlertTheme? alertTheme,
    BaconOpacities? opacities,
    BaconEffectsTheme? effects,
    BaconButtonTheme? buttonTheme,
    BaconDividerTheme? dividerTheme,
  })  : badgeTheme = badgeTheme ?? BaconBadgeTheme(tokens: tokens),
        avatarTheme = avatarTheme ?? BaconAvatarTheme(tokens: tokens),
        alertTheme = alertTheme ?? BaconAlertTheme(tokens: tokens),
        opacities = opacities ?? BaconOpacities.opacities,
        effects = effects ?? BaconEffectsTheme(tokens: tokens),
        buttonTheme = buttonTheme ?? BaconButtonTheme(tokens: tokens),
        dividerTheme = dividerTheme ?? BaconDividerTheme(tokens: tokens);

  @override
  BaconTheme copyWith({
    BaconTokens? tokens,
    BaconBadgeTheme? badgeTheme,
    BaconAvatarTheme? avatarTheme,
    BaconAlertTheme? alertTheme,
    BaconOpacities? opacities,
    BaconEffectsTheme? effects,
    BaconButtonTheme? buttonTheme,
    BaconDividerTheme? dividerTheme,
  }) {
    return BaconTheme(
      tokens: tokens ?? this.tokens,
      badgeTheme: badgeTheme ?? this.badgeTheme,
      avatarTheme: avatarTheme ?? this.avatarTheme,
      alertTheme: alertTheme ?? this.alertTheme,
      opacities: opacities ?? this.opacities,
      effects: effects ?? this.effects,
      buttonTheme: buttonTheme ?? this.buttonTheme,
      dividerTheme: dividerTheme ?? this.dividerTheme,
    );
  }

  @override
  BaconTheme lerp(
    ThemeExtension<BaconTheme>? other,
    double t,
  ) {
    if (other is! BaconTheme) return this;

    return BaconTheme(
      tokens: tokens.lerp(other.tokens, t),
      badgeTheme: badgeTheme.lerp(other.badgeTheme, t),
      avatarTheme: avatarTheme.lerp(other.avatarTheme, t),
      alertTheme: alertTheme.lerp(other.alertTheme, t),
      opacities: opacities.lerp(other.opacities, t),
      effects: effects.lerp(other.effects, t),
      buttonTheme: buttonTheme.lerp(other.buttonTheme, t),
      dividerTheme: dividerTheme.lerp(other.dividerTheme, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty("type", "BaconTheme"));
    properties.add(DiagnosticsProperty<BaconTokens>('tokens', tokens));
    properties
        .add(DiagnosticsProperty<BaconBadgeTheme>('badgeTheme', badgeTheme));
    properties
        .add(DiagnosticsProperty<BaconAvatarTheme>('avatarTheme', avatarTheme));
    properties
        .add(DiagnosticsProperty<BaconAlertTheme>('alertTheme', alertTheme));
    properties.add(DiagnosticsProperty<BaconOpacities>('opacities', opacities));
    properties.add(DiagnosticsProperty<BaconEffectsTheme>('effects', effects));
    properties
        .add(DiagnosticsProperty<BaconButtonTheme>('buttonTheme', buttonTheme));
    properties.add(
        DiagnosticsProperty<BaconDividerTheme>('dividerTheme', dividerTheme));
  }
}

extension BaconThemeB on BuildContext {
  BaconTheme? get baconTheme => Theme.of(this).extension<BaconTheme>();

  BaconOpacities? get opacities => baconTheme?.tokens.opacities;

  BaconEffectsTheme? get baconEffects => baconTheme?.effects;

  /// Bacons default typography
  BaconBaseTypography? get typography => baconTheme?.tokens.typography;

  ///
  BaconBaseLayersSemanticTokensColors? get background =>
      baconTheme?.tokens.modes.background;

  ///
  BaconBaseLayersSemanticTokensColors? get borderColors =>
      baconTheme?.tokens.modes.border;

  ///
  BaconBaseLayersSemanticTokensColors? get contentColors =>
      baconTheme?.tokens.modes.content;

  /// Bacons default action colors
  BaconBaseActionSemanticTokensColors? get actionsColors =>
      baconTheme?.tokens.modes.action;

  BaconBaseAlertSemanticTokensColors? get alertColors =>
      baconTheme?.tokens.modes.alert;

  /// Bacons default component border radius
  BaconBaseRadiiSemanticTokensShape? get radii =>
      baconTheme?.tokens.shape.radii;

  /// Bacons default component scale
  BaconBaseComponentsSemanticTokensScale? get componentScale =>
      baconTheme?.tokens.scale.component;

  /// Bacons default padding
  BaconBasePaddingSemanticTokensScale? get padding =>
      baconTheme?.tokens.scale.padding;

  /// Bacons default gap
  BaconBaseGapSemanticTokensScale? get gap => baconTheme?.tokens.scale.gap;
}
